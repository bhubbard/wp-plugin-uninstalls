<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dmuk_foot_nominated_page');
delete_site_option('dmuk_foot_nominated_page');
delete_option('dmuk_foot_expected_theme');
delete_site_option('dmuk_foot_expected_theme');
delete_option('dmuk_foot_theme_change_dismissed');
delete_site_option('dmuk_foot_theme_change_dismissed');
delete_option('dmuk_foot_analysis_string');
delete_site_option('dmuk_foot_analysis_string');
delete_option('dmuk_foot_search_replace_target_id');
delete_site_option('dmuk_foot_search_replace_target_id');
delete_option('dmuk_foot_search_replace_activate');
delete_site_option('dmuk_foot_search_replace_activate');

