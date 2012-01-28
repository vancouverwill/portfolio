jQuery(document).ready(function() {
				jQuery("a.fancybox").fancybox({
				'transitionIn'	:	'elastic',
				'transitionOut'	:	'elastic',
				'speedIn'		:	600, 
				'speedOut'		:	200, 
				'overlayShow'	:	true
				});
				
				jQuery("a.fancyboxInline").fancybox({
				'hideOnContentClick': true,
				'type' : 'inline'
				});
				
				$("a#inline").fancybox({
				'hideOnContentClick': true,
				'type' : 'inline'
				});
			});