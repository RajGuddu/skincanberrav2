@php $API_KEY = 'AIzaSyB3iAkOTx8_t6uS7JAnjbK2RXsLu0W1_Hs';
$placeId = 'ChIJB_BPuP_LF2sRZ7z8opVoy8A'; @endphp

<style>
  #reviews-wrapper {
    overflow-x: auto;
    padding: 20px 0;
  }

  #reviews {
    display: flex;
    gap: 20px;
    min-width: max-content;
    font-family: 'Arial', sans-serif;
  }

  .review-card {
    min-width: 320px;
    max-width: 320px;
    background: #f9f9f9;
    border-radius: 10px;
    padding: 20px;
    box-shadow: 0 3px 10px rgb(0 0 0 / 0.1);
    color: #202124;
    position: relative;
  }

  .review-header {
    display: flex;
    align-items: center;
    margin-bottom: 8px;
  }

  .profile-circle {
    background: #fbbc04;
    color: white;
    font-weight: bold;
    font-size: 18px;
    width: 40px;
    height: 40px;
    border-radius: 50%;
    display: flex;
    justify-content: center;
    align-items: center;
    text-transform: uppercase;
    margin-right: 12px;
    flex-shrink: 0;
  }

  .reviewer-name-date {
    flex-grow: 1;
    display: flex;
    flex-direction: column;
  }

  .reviewer-name {
    font-weight: 700;
    font-size: 14px;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    max-width: 200px;
  }

  .review-date {
    font-size: 12px;
    color: #5f6368;
  }

  .google-badge {
    width: 18px;
    height: 18px;
    margin-left: 6px;
    flex-shrink: 0;
  }

  .stars-verified {
    display: flex;
    align-items: center;
    gap: 6px;
    margin-bottom: 12px;
  }

  .review-stars {
    color: #fbbc04;
    font-size: 18px;
  }

  .verified-icon {
    width: 18px;
    height: 18px;
  }

  .review-text {
    font-size: 14px;
    line-height: 1.4;
    white-space: pre-wrap;
  }
</style>

<div id="reviews-wrapper table-responsive">
  <div id="reviews"></div>
</div>

<script>
async function initReviews() {

  const { Place } = await google.maps.importLibrary("places");

  const place = new Place({
    id: "ChIJB_BPuP_LF2sRZ7z8opVoy8A" // Your Place ID here
  });

  await place.fetchFields({
    fields: ["reviews"]
  });

  const reviews = place.reviews;

  function renderStars(rating) {
    let stars = "";
    for (let i = 1; i <= 5; i++) {
      stars += i <= rating ? "★" : "☆";
    }
    return stars;
  }

  function formatDate(dateStr) {
    const options = { year: 'numeric', month: '2-digit', day: '2-digit' };
    const date = new Date(dateStr);
    // Format as YYYY-MM-DD
    return date.toISOString().slice(0,10);
  }

  function getInitials(name) {
    if (!name) return "?";
    return name.charAt(0).toUpperCase();
  }

  let html = "";

  reviews.forEach(review => {
    const name = review.authorAttribution.displayName || "Unknown";
    const initials = getInitials(name);
    const date = review.createTime || review.publishTime || new Date().toISOString();
    const formattedDate = formatDate(date);
    const isVerified = review.isLocalGuide || review.isVerified || false; // approximate flag
    const stars = renderStars(review.rating);

    html += `
      <div class="review-card">
        <div class="review-header">
          <div class="profile-circle">${initials}</div>
          <div class="reviewer-name-date">
            <div class="reviewer-name" title="${name}">${name}</div>
            <div class="review-date">${formattedDate}</div>
          </div>
          <img class="google-badge" src="{{ asset('assets/frontend/images/g-icon.svg') }}" alt="Google" />
        </div>
        <div class="stars-verified">
          <div class="review-stars">${stars}</div>
          ${isVerified ? `<img class="verified-icon" src="https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Verified_icon.svg/120px-Verified_icon.svg.png" alt="Verified" title="Verified Reviewer" />` : ''}
        </div>
        <div class="review-text">${review.text}</div>
      </div>
    `;
  });

  document.getElementById("reviews").innerHTML = html;
}

window.initReviews = initReviews;
</script>

<script async
  src="https://maps.googleapis.com/maps/api/js?key={{ $API_KEY }}&libraries=places&callback=initReviews">
</script>