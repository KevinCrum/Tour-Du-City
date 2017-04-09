<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp" />

<div class="container dWhole">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">
						<div class="preview-pic tab-content">
						  <div class="tab-pane active" id="pic-1"><img src="${landmark.image}" class="img-responsive" height="400"/></div>
						</div>  
						
					</div>
					<div class="details col-md-6">
						<h3 class="product-title">${landmark.name}</h3>
						<p>${landmark.address}</p>
						<div class="rating">
							<div class="stars">
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star"></span>
								<span class="fa fa-star"></span>
							</div>
							<span class="review-no">0 Reviews</span>
						</div>
						<br>
						<p class="product-description">${landmark.description}</p>
						<h4 class="price">Cost : <span>${landmark.admission}</span></h4>
						
						<p class="dIcon c${landmark.handicapAccessible}"><span class="fa fa-wheelchair"></span> Handicap</p>
						<p class="dIcon c${landmark.consession}"><span class="fa fa-cutlery"></span> Concession</p><br>
						<p class="dIcon c${landmark.restroom}"><span class="fa fa-male"></span><span class="fa fa-female"></span> Restrooms</p>
						<p class="dIcon c${landmark.kidFriendly}"><span class="fa fa-users"></span> Kid Friendly</p>
						
						<div class="action">
							<button class="add-to-cart btn btn-default" type="button">Add to an Itinerary</button>
							<button class="like btn btn-default" type="button"><span class="fa fa-heart"></span></button>
						</div>
					</div>
				</div>
				<div class="wrapper row">
					<div class="col-md-12">
						<h3></h3>
						<div id="mapD"></div>
			<script>
				function initMap() {
					var location = {
						lat : ${landmark.longitude},
						lng : ${landmark.latitude}
					};
					var map = new google.maps.Map(document.getElementById('mapD'), {
						zoom : 16,
						center : location
					});
					var marker = new google.maps.Marker({
						position : location,
						map : map
					});
				}
			</script>
			<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB5Cyxiz7vexNLr_2SLi_HoFXh4-xC31T8&callback=initMap"></script>
					</div>
				</div>
			</div>
		</div>
	</div>
	



<c:import url="/WEB-INF/jsp/footer.jsp" />