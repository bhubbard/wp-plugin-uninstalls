<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpheka_rfq_general_settings');
delete_site_option('wpheka_rfq_general_settings');
delete_option('wpheka_request_for_quote_page_id');
delete_site_option('wpheka_request_for_quote_page_id');

// Delete Transients
delete_transient('wpheka_rfq_installing');
delete_site_transient('wpheka_rfq_installing');

