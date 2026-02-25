<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('oqey_crop_images');
delete_site_option('oqey_crop_images');
delete_option('oqey_HideThumbs');
delete_site_option('oqey_HideThumbs');
delete_option('oqey_LoopOption');
delete_site_option('oqey_LoopOption');
delete_option('oqey_width');
delete_site_option('oqey_width');
delete_option('oqey_height');
delete_site_option('oqey_height');
delete_option('oqey_limitmax');
delete_site_option('oqey_limitmax');
delete_option('oqey_max_width');
delete_site_option('oqey_max_width');
delete_option('oqey_max_height');
delete_site_option('oqey_max_height');
delete_option('oqey_BorderOption');
delete_site_option('oqey_BorderOption');
delete_option('oqey_AutostartOption');
delete_site_option('oqey_AutostartOption');
delete_option('oqey_CaptionsOption');
delete_site_option('oqey_CaptionsOption');
delete_option('oqey_options');
delete_site_option('oqey_options');
delete_option('oqey_thumb_width');
delete_site_option('oqey_thumb_width');
delete_option('oqey_thumb_height');
delete_site_option('oqey_thumb_height');
delete_option('oqey_effects_trans_time');
delete_site_option('oqey_effects_trans_time');
delete_option('oqey_pause_between_tran');
delete_site_option('oqey_pause_between_tran');
delete_option('oqey_border_bgcolor');
delete_site_option('oqey_border_bgcolor');
delete_option('oqey_bgcolor');
delete_site_option('oqey_bgcolor');
delete_option('oqey_effect_transition_type');
delete_site_option('oqey_effect_transition_type');
delete_option('oqey_BorderSize');
delete_site_option('oqey_BorderSize');
delete_option('oqey_gall_title_no');
delete_site_option('oqey_gall_title_no');
delete_option('oqey_show_captions_under_photos');
delete_site_option('oqey_show_captions_under_photos');
delete_option('oqey_noflash_options');
delete_site_option('oqey_noflash_options');
delete_option('oqey_backlinks');
delete_site_option('oqey_backlinks');
delete_option('oqey_flash_gallery_true');
delete_site_option('oqey_flash_gallery_true');

