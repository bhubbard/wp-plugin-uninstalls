<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('toolzcmpft_banner_id');
delete_site_option('toolzcmpft_banner_id');
delete_option('toolzcmpft_banner_enable');
delete_site_option('toolzcmpft_banner_enable');

