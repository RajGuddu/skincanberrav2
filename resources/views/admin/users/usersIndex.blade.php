@extends('admin._layout.master')
@section('content')
@php
	use App\Models\ServiceVariantsModel;
@endphp
<div class="app-content pt-3 p-md-3 p-lg-4">
	<div class="container-fluid">

		<div class="row g-3 mb-4 align-items-center justify-content-between">
			<div class="col-auto">
				<h1 class="app-page-title mb-0">Users List</h1>
			</div>
			@if(is_privilege(2,2))
			<div class="col-auto">
				<a class="btn app-btn-secondary" href="{{ url('admin/add_user') }}"> Add </a>
				
			</div>
			@endif
			<?php /* <div class="col-auto">
				<div class="page-utilities">
					<div class="row g-2 justify-content-start justify-content-md-end align-items-center">
						<div class="col-auto">
							<form action="{{ url()->current() }}" method="post" class="table-search-form row gx-1 align-items-center" >
								@csrf
								<div class="col-auto">
									<input type="text" id="search-orders" name="search" value="{{ $_POST['search'] ?? '' }}"
										class="form-control search-orders" placeholder="Search">
								</div>
								<div class="col-auto">
									<button type="submit" class="btn app-btn-secondary">Search</button>
								</div>
							</form>

						</div><!--//col-->
						<div class="col-auto">
							<a class="btn app-btn-secondary" href="{{ url('admin/cms') }}"> Refresh </a>
						</div>
						
						<?php /* <div class="col-auto">
							<a class="btn app-btn-secondary" href="#">
								<!-- <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-download me-1"
									fill="currentColor" xmlns="http://www.w3.org/2000/svg">
									<path fill-rule="evenodd"
										d="M.5 9.9a.5.5 0 0 1 .5.5v2.5a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-2.5a.5.5 0 0 1 1 0v2.5a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2v-2.5a.5.5 0 0 1 .5-.5z" />
									<path fill-rule="evenodd"
										d="M7.646 11.854a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293V1.5a.5.5 0 0 0-1 0v8.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3z" />
								</svg> -->
								Back
							</a>
						</div> *
					</div><!--//row-->
				</div><!--//table-utilities-->
			</div><!--//col-auto--> */ ?>
		</div><!--//row-->
		<?php if(Session::has('message')){ 
			echo alertBS(session('message')['msg'], session('message')['type']);
		} ?>

		<div class="app-card app-card-orders-table shadow-sm mb-5">
			<div class="app-card-body">
				<div class="table-responsive">
					<table class="table app-table-hover mb-0 text-left">
						<thead>
							<tr>
								<th class="cell">#</th>
								<th class="cell">Photo </th>
								<th class="cell">Name</th>
								<th class="cell">Privilege</th>
								<th class="cell">Email</th>
								<th class="cell">Phone</th>
								<th class="cell">Status</th>
								<th class="cell">Action</th>
							</tr>
						</thead>
						<tbody>
							@if($users->isNotEmpty())
							@php $n = 1; @endphp
							@foreach($users as $list)
							@php if($list->status == 1){
								$status = '<span class="badge bg-success">Active</span>';
							}else{
								$status = '<span class="badge bg-danger">Inactive</span>';
							} 
							$img = ''; 
							if($list->image != '')
								$img = $list->image;
							@endphp
							<tr>
								<td class="cell">{{ $n++ }}</td>
								<td class="cell">
									@if($img != '')
									<img src="{{ url(IMAGE_PATH.$img) }}" alt="Profile Photo" width="80px" height="60px">
									@else
										{{ '--' }}
									@endif
								</td>
								
								<td class="cell">{{ $list->name }}</td>
								<td class="cell">{{ $list->post_name }}</td>
								<td class="cell">{{ $list->email }}</td>
								<td class="cell">{{ $list->phone }}</td>
								
								<td class="cell">{!! $status !!}</td>
								<td class="cell">
									
									@if(is_privilege(2,3))
									<a class="btn-sm app-btn-secondary" href="{{ url('admin/edit_user/'.$list->user_id) }}">Edit</a>
									@endif
									@if($list->user_id != 1)
									@if(is_privilege(2,4))
									<a class="btn-sm app-btn-secondary" onclick="return confirm('Are u sure?')" href="{{ url('admin/delete_user/'.$list->user_id) }}">Delete</a>
									@endif
									@endif
								</td>
							</tr>
							@endforeach
							
							@else
							<tr><td colspan="6" class="text-danger text-center">No Record Available!</td></tr>
							@endif
							

						</tbody>
					</table>
				</div><!--//table-responsive-->

			</div><!--//app-card-body-->
		</div><!--//app-card-->
		<?php /* <nav class="app-pagination">
			<ul class="pagination justify-content-center">
				<li class="page-item disabled">
					<a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
				</li>
				<li class="page-item active"><a class="page-link" href="#">1</a></li>
				<li class="page-item"><a class="page-link" href="#">2</a></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
				<li class="page-item">
					<a class="page-link" href="#">Next</a>
				</li>
			</ul>
		</nav><!--//app-pagination--> */ ?>

	</div><!--//container-fluid-->
</div><!--//app-content-->
@endsection