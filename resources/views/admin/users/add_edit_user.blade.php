@extends('admin._layout.master')
@section('content')
<style>
.services-grid {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 10px;
}
</style>
<div class="app-content pt-3 p-md-3 p-lg-4">
	<div class="container-fluid">
		<div class="d-flex align-items-center justify-content-between">
			<h1 class="app-page-title">{{(isset($record))?'Edit':'Add'}} User</h1>
			<div class="">
				<a class="btn app-btn-secondary" href="{{ url('admin/users') }}"> Back </a>
			</div>
		</div>
		<hr class="mb-4">
		<div class="row g-4">
			<div class="col-12 col-md-7">
				<div class="app-card app-card-settings shadow-sm p-4">

					<div class="app-card-body">
						<form class="" action="{{ url()->current() }}" method="post" enctype="multipart/form-data">
							@csrf
							<div class="mb-3">
								<label for="image" class="form-label">Profile Photo</label>
								<input type="file" class="form-control" id="image" name="image">
								<input type="hidden" name="old_image" value="{{ $record->image ?? '' }}">
							</div>
							<div class="mb-3">
								<label for="name" class="form-label">Name</label>
								<input type="text" class="form-control" id="name" name="name"
									value="{{ old('name', $record->name ?? '') }}">
								@error('name') <span class="text-danger"> {{ $message }} </span> @enderror
							</div>
							<?php /*<div class="mb-3">
								<label for="privilege_id" class="form-label">Select Role Privilege</label>
								<select name="privilege_id" id="privilege_id" class="form-control">
                                    <option value="">Select Privilege</option>
                                    
                                </select>
								@error('privilege_id') <span class="text-danger"> {{ $message }} </span> @enderror
							</div>*/ ?>
							
							<div class="mb-3">
								<label for="email" class="form-label">Email</label>
								<input type="email" class="form-control" id="email" name="email"
									value="{{ old('email', $record->email ?? '') }}">
								<input type="hidden" name="oldEmail" value="{{ $record->email ?? '' }}">
								@error('email') <span class="text-danger"> {{ $message }} </span> @enderror
							</div>
							<div class="mb-3">
								<label for="phone" class="form-label">Phone</label>
								<input type="text" class="form-control" id="phone" name="phone"
									value="{{ old('phone', $record->phone ?? '') }}">
								@error('phone') <span class="text-danger"> {{ $message }} </span> @enderror
							</div>
							<div class="mb-3">
								<label for="address" class="form-label">Address</label>
								<input type="text" class="form-control" id="address" name="address"
									value="{{ old('address', $record->address ?? '') }}">
								@error('address') <span class="text-danger"> {{ $message }} </span> @enderror
							</div>

							<div class="mb-3">
								<label for="address" class="form-label">Services Provided</label>
								<div>
									<label>
										@php $userServices = []; $allChecked = 0;
										if(isset($record) && $record->services != ''){
											$userServices = explode(',', $record->services);
										}
										if(count($userServices) == $services->count()) $allChecked = 1;
										@endphp
										<input type="checkbox" id="select_all" {{ $allChecked ?'checked':'' }}> <strong>Select All</strong>
									</label>
								</div>
								<div class="services-grid">
									@if($services->isNotEmpty())
									@foreach($services as $list)
									<label><input type="checkbox" class="service_checkbox" name="services[]" value="{{ $list->sv_id }}" {{ isset($record) && in_array($list->sv_id, $userServices) ?'checked':'' }}> {{ $list->service_name }}</label>
									@endforeach
									@endif
								</div>
							</div>
							
							<div class="mb-3">
								<label for="status" class="form-label">Status</label>
								<div class="form-check form-switch mb-3">
									<input class="form-check-input" type="radio" id="status" name="status" value="1" checked>
									<label class="form-check-label" for="status">Active</label>
								</div>
								<div class="form-check form-switch mb-3">
									@php
										$status = old('status', ($record->status ?? 0));
									@endphp
									<input class="form-check-input" type="radio" id="status2" name="status" value="0" {{ $status == 0 ? 'checked' : '' }} >
									<label class="form-check-label" for="status2">Inactive</label>
								</div>
							</div>
							<button type="submit" class="btn app-btn-primary">Save Changes</button>
							<a href="{{ url('admin/users') }}" class="btn app-btn-secondary">Cancel</a>
						</form>
					</div><!--//app-card-body-->

				</div><!--//app-card-->
			</div>
			<div class="col-12 col-md-5">
				<h3 class="section-title">Uploaded Images</h3>
				<div class="card ">
					<div class="card-body">
						<div class="d-flex align-content-start flex-wrap my-2">
							@php $isImage = 0; @endphp
							@if(isset($record) && $record->image != '')
							@php $isImage = 1; @endphp
							<div class="img-box">
								<span class="cancel-icon"
									onclick="cancel_image_('tbl_admin','image','user_id', <?=$record->user_id?>)"><i
										class="fa-solid fa-xmark" title="Cancel"></i>
								</span>
								<img src="{{ url(IMAGE_PATH.$record->image) }}" class="" alt="...">
								<small class="image-title">User Photo</small>
							</div>
							@endif
							
							@if(!$isImage)
							<div class="text-center text-danger">No any image upload!</div>
							@endif
						</div>
					</div>
				</div>
			</div>

		</div><!--//row-->


	</div><!--//container-fluid-->
</div><!--//app-content-->
<script>
	let selectAll = document.getElementById('select_all');
	let checkboxes = document.querySelectorAll('.service_checkbox');

	// Select All click
	selectAll.addEventListener('change', function () {
		checkboxes.forEach(cb => cb.checked = selectAll.checked);
	});

	// Individual checkbox change
	checkboxes.forEach(cb => {
		cb.addEventListener('change', function () {
			if (!this.checked) {
				selectAll.checked = false;
			} else {
				let allChecked = document.querySelectorAll('.service_checkbox:checked').length === checkboxes.length;
				selectAll.checked = allChecked;
			}
		});
	});
	tinymce.init({
		selector: '#description',
		plugins: 'advlist autolink lists link image charmap preview anchor ' +
               'searchreplace visualblocks code fullscreen insertdatetime media table code help wordcount',
		toolbar: 'undo redo | formatselect | ' +
				'bold italic underline strikethrough | ' +
				'alignleft aligncenter alignright alignjustify | ' +
				'bullist numlist outdent indent | code removeformat | link image | ' +
				'forecolor backcolor | help',
		branding: false,
		block_formats: 'Paragraph=p; Heading 1=h1; Heading 2=h2; Heading 3=h3; Preformatted=pre'
	});
	document.addEventListener('DOMContentLoaded', function () {
		const serviceInput = document.getElementById('service_name');
		const urlInput = document.getElementById('serv_url');

		if (serviceInput && urlInput) {
			serviceInput.addEventListener('keyup', function () {
				let urlval = serviceInput.value;
				let newurl = urlval
					.replace(/[_\s]+/g, '-')
					.replace(/[^a-zA-Z-]/g, '')
					.toLowerCase();

				urlInput.value = newurl;
			});
		}
	});
</script>


@endsection