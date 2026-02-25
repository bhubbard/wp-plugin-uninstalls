<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('WYT_Cookie-Time');
delete_site_option('WYT_Cookie-Time');
delete_option('WYT_need_key');
delete_site_option('WYT_need_key');
delete_option('WYT_key_value');
delete_site_option('WYT_key_value');
delete_option('WYT_all_cookie');
delete_site_option('WYT_all_cookie');
delete_option('WYT_Compatible');
delete_site_option('WYT_Compatible');
delete_option('WYT_button-choose');
delete_site_option('WYT_button-choose');
delete_option('WYT_button_title');
delete_site_option('WYT_button_title');
delete_option('WYT_img_width');
delete_site_option('WYT_img_width');
delete_option('WYT_img_height');
delete_site_option('WYT_img_height');
delete_option('WYT_Custom-Location');
delete_site_option('WYT_Custom-Location');
delete_option('WYT_click-Location');
delete_site_option('WYT_click-Location');
delete_option('WYT_xoffset');
delete_site_option('WYT_xoffset');
delete_option('WYT_yoffset');
delete_site_option('WYT_yoffset');
delete_option('WYT_start_id');
delete_site_option('WYT_start_id');
delete_option('WYT_succss_tips');
delete_site_option('WYT_succss_tips');
delete_option('WYT_faild_tips');
delete_site_option('WYT_faild_tips');
delete_option('WYT_zindex');
delete_site_option('WYT_zindex');
delete_option('WYT_Just-Admin');
delete_site_option('WYT_Just-Admin');
delete_option('WYT_JS-Location');
delete_site_option('WYT_JS-Location');

