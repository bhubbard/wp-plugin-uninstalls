<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('avivid_signal_web_id');
delete_site_option('avivid_signal_web_id');
delete_option('avivid_signal_category_id');
delete_site_option('avivid_signal_category_id');

