<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ads-option-publisher-zones');
delete_site_option('ads-option-publisher-zones');
delete_option('ads-option-publisher-zones-last-update');
delete_site_option('ads-option-publisher-zones-last-update');

