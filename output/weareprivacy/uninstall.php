<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('weareprivacy_policy_highlights_enabled');
delete_site_option('weareprivacy_policy_highlights_enabled');
delete_option('weareprivacy_policy_highlights_page_triggers');
delete_site_option('weareprivacy_policy_highlights_page_triggers');

