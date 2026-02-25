<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cpttm_page_type');
delete_site_option('cpttm_page_type');
delete_option('cpttm_page_date');
delete_site_option('cpttm_page_date');
delete_option('cpttm_page_author');
delete_site_option('cpttm_page_author');
delete_option('cpttm_taxonomies');
delete_site_option('cpttm_taxonomies');
delete_option('cpttm_events_triggers');
delete_site_option('cpttm_events_triggers');
delete_option('cpttm_head_script');
delete_site_option('cpttm_head_script');
delete_option('cpttm_body_script');
delete_site_option('cpttm_body_script');
delete_option('cpttm_footer_script');
delete_site_option('cpttm_footer_script');
delete_option('cpttm_head_script_enabled');
delete_site_option('cpttm_head_script_enabled');
delete_option('cpttm_body_script_enabled');
delete_site_option('cpttm_body_script_enabled');
delete_option('cpttm_footer_script_enabled');
delete_site_option('cpttm_footer_script_enabled');

