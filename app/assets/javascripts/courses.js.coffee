# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

buttonOptions={'buttonList':
								[
									'bold', 'italic', 'underline',
									'left','center','right', 'subscript', 'superscript',
									'strikethrough', 'indent', 'outdent', 'fontSize'
								]
					
				   };

jQuery -> 
	jQuery(document).ready ->
		hasTextBox=jQuery("#descriptiontext").length
		new nicEditor(buttonOptions).panelInstance('descriptiontext') if hasTextBox