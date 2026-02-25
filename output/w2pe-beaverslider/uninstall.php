<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bslider_effects');
delete_site_option('bslider_effects');
delete_option('bslider_height');
delete_site_option('bslider_height');
delete_option('bslider_width');
delete_site_option('bslider_width');
delete_option('bslider_caption_visible');
delete_site_option('bslider_caption_visible');
delete_option('bslider_caption_left');
delete_site_option('bslider_caption_left');
delete_option('bslider_caption_right');
delete_site_option('bslider_caption_right');
delete_option('bslider_caption_bottom');
delete_site_option('bslider_caption_bottom');
delete_option('bslider_paginate');
delete_site_option('bslider_paginate');
delete_option('bslider_paginate_pos');
delete_site_option('bslider_paginate_pos');
delete_option('bslider_pause_time');
delete_site_option('bslider_pause_time');
delete_option('bslider_interval');
delete_site_option('bslider_interval');
delete_option('bslider_supdate');
delete_site_option('bslider_supdate');
delete_option('bslider_caption_top');
delete_site_option('bslider_caption_top');
delete_option(' bslider_width');
delete_site_option(' bslider_width');
delete_option(' bslider_height');
delete_site_option(' bslider_height');
delete_option(' bslider_caption_visible');
delete_site_option(' bslider_caption_visible');
delete_option(' bslider_caption_left');
delete_site_option(' bslider_caption_left');
delete_option(' bslider_caption_right');
delete_site_option(' bslider_caption_right');
delete_option(' bslider_caption_top');
delete_site_option(' bslider_caption_top');
delete_option(' bslider_caption_bottom');
delete_site_option(' bslider_caption_bottom');
delete_option(' bslider_paginate');
delete_site_option(' bslider_paginate');
delete_option(' bslider_pause_time');
delete_site_option(' bslider_pause_time');
delete_option(' bslider_interval');
delete_site_option(' bslider_interval');
delete_option(' bslider_supdate');
delete_site_option(' bslider_supdate');
delete_option(' bslider_effects');
delete_site_option(' bslider_effects');

