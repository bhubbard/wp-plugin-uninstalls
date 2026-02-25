<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eventtracker');
delete_site_option('eventtracker');
delete_option('outboundFormTracker');
delete_site_option('outboundFormTracker');
delete_option('outboundLinkTracker');
delete_site_option('outboundLinkTracker');
delete_option('socialWidgetTracker');
delete_site_option('socialWidgetTracker');
delete_option('gaid');
delete_site_option('gaid');

