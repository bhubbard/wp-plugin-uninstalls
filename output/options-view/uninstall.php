<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('options-view');
delete_site_option('options-view');
delete_option('opv_per_page');
delete_site_option('opv_per_page');
delete_option('opv_current_logs');
delete_site_option('opv_current_logs');
delete_option('opv_filter_user');
delete_site_option('opv_filter_user');
delete_option('optionsview_search_text');
delete_site_option('optionsview_search_text');

