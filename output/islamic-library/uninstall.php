<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('islamic_library_language_code');
delete_site_option('islamic_library_language_code');
delete_option('islamic_library_video_view');
delete_site_option('islamic_library_video_view');
delete_option('islamic_library_view_breadcrumb');
delete_site_option('islamic_library_view_breadcrumb');
delete_option('islamic_library_hidden_date');
delete_site_option('islamic_library_hidden_date');
delete_option('islamic_library_hidden_prepared');
delete_site_option('islamic_library_hidden_prepared');
delete_option('islamic_library_hidden_language');
delete_site_option('islamic_library_hidden_language');
delete_option('islamic_library_hidden_translated_into');
delete_site_option('islamic_library_hidden_translated_into');
delete_option('islamic_library_hidden_source');
delete_site_option('islamic_library_hidden_source');
delete_option('islamic_library_hidden_image');
delete_site_option('islamic_library_hidden_image');
delete_option('islamic_library_hidden_info_date');
delete_site_option('islamic_library_hidden_info_date');
delete_option('islamic_library_hidden_info_prepared');
delete_site_option('islamic_library_hidden_info_prepared');
delete_option('islamic_library_hidden_info_language');
delete_site_option('islamic_library_hidden_info_language');
delete_option('islamic_library_hidden_info_translated_into');
delete_site_option('islamic_library_hidden_info_translated_into');
delete_option('islamic_library_hidden_info_source');
delete_site_option('islamic_library_hidden_info_source');
delete_option('islamic_library_hidden_info_full_description');
delete_site_option('islamic_library_hidden_info_full_description');
delete_option('islamic_library_hidden_info_attachments');
delete_site_option('islamic_library_hidden_info_attachments');
delete_option('islamic_library_hidden_info_image');
delete_site_option('islamic_library_hidden_info_image');

