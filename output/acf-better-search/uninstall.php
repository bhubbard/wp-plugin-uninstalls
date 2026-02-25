<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('acfbs_fields_types');
delete_site_option('acfbs_fields_types');
delete_option('acfbs_whole_phrases');
delete_site_option('acfbs_whole_phrases');
delete_option('acfbs_whole_words');
delete_site_option('acfbs_whole_words');
delete_option('acfbs_lite_mode');
delete_site_option('acfbs_lite_mode');
delete_option('acfbs_selected_mode');
delete_site_option('acfbs_selected_mode');

