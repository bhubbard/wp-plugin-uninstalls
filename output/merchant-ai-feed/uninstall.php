<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('merchant_ai_active_status');
delete_site_option('merchant_ai_active_status');
delete_option('merchant_ai_auto_sync_status');
delete_site_option('merchant_ai_auto_sync_status');

