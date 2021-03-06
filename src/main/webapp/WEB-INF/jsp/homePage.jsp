<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp" />

<c:choose>
	<c:when test="${empty currentUser}">
		<c:url var="registration" value="/registration" />
		<c:url var="search" value="/search" />
		<div id="bootstrap-touch-slider"
			class="carousel bs-slider fade  control-round indicators-line"
			data-ride="carousel" data-pause="hover" data-interval="5000">

			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#bootstrap-touch-slider" data-slide-to="0"
					class="active"></li>
				<li data-target="#bootstrap-touch-slider" data-slide-to="1"></li>
				<li data-target="#bootstrap-touch-slider" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper For Slides -->
			<c:url var="formAction" value="/loginPage" />
			<c:url var="registration" value="/registration" />
			<div class="carousel-inner" role="listbox">

				<!-- First Slide -->
				<div class="item active">

					<!-- Slide Background -->
					<img src="img/subway.jpg" alt="" class="slide-image" />
					<div class="bs-slider-overlay"></div>

					<div class="container">
						<div class="row">
							<!-- Slide Text Layer -->
							<div class="slide-text slide_style_left">
								<h1 data-animation="animated zoomInRight">Discover a new
									city!</h1>
								<p data-animation="animated fadeInLeft">Explore the historic
									landmarks your city has to offer.</p>
								<a href="${formAction}" class="btn btn-default"
									data-animation="animated fadeInLeft">Login</a> <a
									href="${registration}" class="btn btn-primary rBut"
									data-animation="animated fadeInRight">Join Us</a>
							</div>
						</div>
					</div>
				</div>
				<!-- End of Slide -->

				<!-- Second Slide -->
				<div class="item">

					<!-- Slide Background -->
					<img src="img/search.jpg" alt="" class="slide-image" />
					<div class="bs-slider-overlay"></div>
					<!-- Slide Text Layer -->
					<div class="slide-text slide_style_center">
						<h1 data-animation="animated flipInX">Search for new
							landmarks to visit!</h1>
						<p data-animation="animated lightSpeedIn">Find details on each
							location.</p>
						<a href="${formAction}" class="btn btn-default"
							data-animation="animated fadeInUp">Login</a> <a
							href="${registration}" class="btn btn-primary rBut"
							data-animation="animated fadeInDown">Join Us</a>
					</div>
				</div>
				<!-- End of Slide -->

				<!-- Third Slide -->
				<div class="item">

					<!-- Slide Background -->
					<img src="img/create.jpg" alt="" class="slide-image" />
					<div class="bs-slider-overlay"></div>
					<!-- Slide Text Layer -->
					<div class="slide-text slide_style_right">
						<h1 data-animation="animated zoomInLeft">Create your next
							adventure!</h1>
						<p data-animation="animated fadeInRight">Just choose the
							landmarks you want to visit and Tour du City will create your
							perfect itinerary.</p>
						<a href="${formAction}" class="btn btn-default"
							data-animation="animated fadeInLeft">Login</a> <a
							href="${registration}" class="btn btn-primary rBut"
							data-animation="animated fadeInRight">Join Us</a>
					</div>
				</div>
				<!-- End of Slide -->


			</div>
			<!-- End of Wrapper For Slides -->

			<!-- Left Control -->
			<a class="left carousel-control" href="#bootstrap-touch-slider"
				role="button" data-slide="prev"> <span class="fa fa-angle-left"
				aria-hidden="true"></span> <span class="sr-only">Previous</span>
			</a>

			<!-- Right Control -->
			<a class="right carousel-control" href="#bootstrap-touch-slider"
				role="button" data-slide="next"> <span class="fa fa-angle-right"
				aria-hidden="true"></span> <span class="sr-only">Next</span>
			</a>

		</div>
		<!-- End  bootstrap-touch-slider Slider -->

		<!-- SECTION 2 -->
		<br>

		<div class="jumbotron jumbocode">
			<br> <br>
			<div class="container">
				<h1 id="centertext">Create the perfect travel itinerary!</h1>
			</div>
			<div class="container circlecontainer">
				<div class="row circlerow">
					<div class="col-sm-4 circlepic">
						<img src="img/planning.jpg" class="img-circle person" alt="Search"
							width="255" height="255">
						<h3>Search</h3>
						<p>Visiting a new city? Or maybe you just want to explore an
							known city in a new way.</p>
						<p>Just search by your city by name or zipcode to see all of
							the nearby landmarks!</p>
					</div>
					<div class="col-sm-4 circlepic">
						<img src="img/explore.jpg" class="img-circle person"
							alt="Discover" width="255" height="255">
						<h3>Discover</h3>
						<p>Historic monuments, buildings, parks and more! Discover all
							of the hidden gems your city has to offer.</p>
						<p>Experience your own city in a new way!</p>
					</div>
					<div class="col-sm-4 circlepic">
						<img src="img/planner.jpg" class="img-circle person" alt="Plan"
							width="255" height="255">
						<h3>Plan</h3>
						<p>Choose all of the attractions that you'd like to visit and
							let us do the rest!</p>
						<p>Tour du City will take each of your landmarks and generate
							the best itinerary for your trip.</p>
					</div>
				</div>
			</div>
		</div>

		<!--SECTION 3-->

		<div class="container jumbocontainer">
			<div class="row rowclass">
				<div class="col-md-7 columnBoxes" id="home-map">
					<img src="img/suedomap.png" class="img-responsive imghomepage"
						alt="Map">
				</div>
				<div class="col-md-5 mapcontent columnBoxes">
					<h1 id="firstH1">Search your location.</h1>
					<h1>View surrounding landmarks.</h1>
					<h1>Map your route.</h1>
					<br>
					<form action="${search}" method="GET">
						<button type="submit" class="active searchButton">Search
							a Landmark</button>
					</form>
				</div>
			</div>
		</div>



		<div
			style="text-align: center; margin-top: 100px; margin-bottom: 100px"
			id="getStartedDiv">
			<h3>
				Sign up for a <b>free</b> account! Create your itinerary today!
			</h3>
			<form action="${registration}" method="GET">
				<button type="submit" class="active getStartedButton">Get
					Started</button>
			</form>
		</div>
	</c:when>
	<c:otherwise>

		<c:url var="createItineraryHref" value="/search" />
		<c:url var="suggestLandmarkHref" value="/suggestions" />
		<c:url var="manageItineraryHref" value="/manageItinerary" />

		<div class="homepagelayer">
			<div class="w3-row-padding w3-center w3-padding-64 homepagebackground"
				id="pricing">
				<div class="w3-third  w3-margin-bottom boxforhomepage">
					<ul class="w3-ul w3-border w3-hover-shadow">
						<li class="tBox">
							<p class="hBox">Create Itinerary</p>
						</li>
						<li><img src="img/computersearch.jpg"
							class="img-responsive homeimg" alt="Search"></li>
						<li class="w3-theme-l5 w3-padding-24"><a
							href="${createItineraryHref}"
							class="btn btn-info w3-button w3-teal w3-padding-large"
							role="button">Create</a></li>
					</ul>
				</div>

				<div class="w3-third w3-margin-bottom boxforhomepage">
					<ul class="w3-ul w3-border w3-hover-shadow">
						<li class="tBox">
							<p class="hBox">Suggest Landmarks</p>
						</li>
						<li><img src="img/plane.jpg" class="img-responsive homeimg"
							alt="Create"></li>
						<li class="w3-theme-l5 w3-padding-24"><a
							href="${suggestLandmarkHref}"
							class="btn btn-info w3-button w3-teal w3-padding-large"
							role="button">Suggest</a></li>
					</ul>
				</div>

				<div class="w3-third w3-margin-bottom boxforhomepage">
					<ul class="w3-ul w3-border w3-hover-shadow">
						<li class="tBox">
							<p class="hBox">Manage Itinerary</p>
						</li>
						<li><img src="img/manageit.jpg"
							class="img-responsive homeimg" alt="Manage"></li>
						<li class="w3-theme-l5 w3-padding-24"><a
							href="${manageItineraryHref}"
							class="btn btn-info w3-button w3-teal w3-padding-large"
							role="button">Manage</a></li>
					</ul>
				</div>
			</div>
		</div>
	</c:otherwise>
</c:choose>



<c:import url="/WEB-INF/jsp/footer.jsp" />