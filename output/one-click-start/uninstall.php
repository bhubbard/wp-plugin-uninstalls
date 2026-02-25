<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('one_click_start_saved_recipe');
delete_site_option('one_click_start_saved_recipe');
delete_option('one_click_start_show_review_prompt');
delete_site_option('one_click_start_show_review_prompt');
delete_option('enable_xmlrpc');
delete_site_option('enable_xmlrpc');
delete_option('ocs_saved_recipe');
delete_site_option('ocs_saved_recipe');

