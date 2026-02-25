<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hintr_settings');
delete_site_option('hintr_settings');
delete_option('hintr_last_updated');
delete_site_option('hintr_last_updated');

