BookDirectives = angular.module("BookDirectives", [])

BookDirectives.directive("tacoMap", ()-> 
	link = (scope, element, attrs)->
		element[0].style.height = "500px"
		element[0].style.width = "500px"
		mapOptions = {
			zoom: 8,
			center: new google.maps.LatLng(-34.397, 150.644)
		}

		map = new google.maps.Map(element[0], mapOptions)

	{link: link}
)
