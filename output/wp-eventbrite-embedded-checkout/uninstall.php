<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpeec-event-id');
delete_site_option('wpeec-event-id');
delete_option('wpeec-event-form-mode');
delete_site_option('wpeec-event-form-mode');
delete_option('wpeec-frame-height');
delete_site_option('wpeec-frame-height');
delete_option('wpeec-button-text');
delete_site_option('wpeec-button-text');

