<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('uaf_css_updated_timestamp');
delete_site_option('uaf_css_updated_timestamp');
delete_option('uaf_api_key');
delete_site_option('uaf_api_key');
delete_option('uaf_activated_url');
delete_site_option('uaf_activated_url');
delete_option('uaf_hide_key');
delete_site_option('uaf_hide_key');
delete_option('uaf_current_version');
delete_site_option('uaf_current_version');
delete_option('uaf_install_date');
delete_site_option('uaf_install_date');
delete_option('uaf_reviews_notice_hide');
delete_site_option('uaf_reviews_notice_hide');
delete_option('uaf_disbale_editor_font_list');
delete_site_option('uaf_disbale_editor_font_list');
delete_option('uaf_font_data');
delete_site_option('uaf_font_data');
delete_option('uaf_font_implement');
delete_site_option('uaf_font_implement');
delete_option('uaf_site_url');
delete_site_option('uaf_site_url');

// Delete Transients
delete_transient('uaf_css_write_error');
delete_site_transient('uaf_css_write_error');
delete_transient('uaf_folder_create_error');
delete_site_transient('uaf_folder_create_error');

