<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('twiz_override_network_settings');
delete_site_option('twiz_override_network_settings');
delete_option('twiz_admin');
delete_site_option('twiz_admin');
delete_option('twiz_db_version');
delete_site_option('twiz_db_version');
delete_option('twiz_global_status');
delete_site_option('twiz_global_status');
delete_option('twiz_cookie_js_status');
delete_site_option('twiz_cookie_js_status');
delete_option('twiz_network_activated');
delete_site_option('twiz_network_activated');
delete_option('twiz_toggle');
delete_site_option('twiz_toggle');
delete_option('twiz_order_by');
delete_site_option('twiz_order_by');
delete_option('twiz_skin');
delete_site_option('twiz_skin');
delete_option('twiz_bullet');
delete_site_option('twiz_bullet');
delete_option('twiz_setting_menu');
delete_site_option('twiz_setting_menu');
delete_option('twiz_hscroll_status');
delete_site_option('twiz_hscroll_status');
delete_option('twiz_privacy_question_answered');
delete_site_option('twiz_privacy_question_answered');
delete_option('twiz_sections');
delete_site_option('twiz_sections');
delete_option('twiz_hardsections');
delete_site_option('twiz_hardsections');
delete_option('twiz_export_filter');
delete_site_option('twiz_export_filter');
delete_option('twiz_library');
delete_site_option('twiz_library');
delete_option('twiz_multi_sections');
delete_site_option('twiz_multi_sections');
delete_option('twiz_library_dir');
delete_site_option('twiz_library_dir');
delete_option('ms_files_rewriting');
delete_site_option('ms_files_rewriting');

