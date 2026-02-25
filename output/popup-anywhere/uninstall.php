<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jwext_show_when');
delete_site_option('jwext_show_when');
delete_option('jwext_livetime_cookie');
delete_site_option('jwext_livetime_cookie');
delete_option('jwext_popup_type');
delete_site_option('jwext_popup_type');
delete_option('jwext_popup_onpages');
delete_site_option('jwext_popup_onpages');
delete_option('jwext_popupanywhere_dbsession');
delete_site_option('jwext_popupanywhere_dbsession');
delete_option('jwext_popup_assignshow');
delete_site_option('jwext_popup_assignshow');
delete_option('jwext_custom_postype');
delete_site_option('jwext_custom_postype');
delete_option('jwext_custom_menu');
delete_site_option('jwext_custom_menu');
delete_option('jwext_image_id');
delete_site_option('jwext_image_id');
delete_option('jwext_content_popup');
delete_site_option('jwext_content_popup');
delete_option('external_link');
delete_site_option('external_link');
delete_option('jwext_width');
delete_site_option('jwext_width');
delete_option('jwext_height');
delete_site_option('jwext_height');
delete_option('jwext_close_s');
delete_site_option('jwext_close_s');
delete_option('jwext_redirect_link');
delete_site_option('jwext_redirect_link');

