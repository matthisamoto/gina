(function(window, $) {
	
	jQuery.fn.labelDisappear = function() {
		return this.each(function(i,elem) {
			elem = jQuery(elem);
			elem.bind({
				focus: function() {
					$(this).prevAll("label:first").css('display', "none");
				},
				blur: function() {
					if($(this).val().length === 0) $(this).prevAll("label:first").css('display','block');
				}
			});
		});
	}
	
	var List = {
   
	  setup: function() {

		$('form').die().live('submit', function(e) {
		  var name  = $.trim($('#user_name').val())
		  var wish = $.trim($('#user_wish').val())
		  if( name.length > 0 && wish.length > 0 && name.toLowerCase() != "Name".toLowerCase() && wish.toLowerCase() != "Wish".toLowerCase()) {
		  } else {
			alert("Please fill out both fields.")
			return false;
		  }
		})
	
		
		$('#user_name, #user_wish').val("");
		$('#user_name, #user_wish').labelDisappear();
		
	  }
	}

	List.setup();

})(window, jQuery);