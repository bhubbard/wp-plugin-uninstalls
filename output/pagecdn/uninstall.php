<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pagecdn');
delete_site_option('pagecdn');
delete_option('pagecdn-cache');
delete_site_option('pagecdn-cache');
delete_option('pagecdn-image-cache');
delete_site_option('pagecdn-image-cache');
delete_option('pagecdn-webp-cache');
delete_site_option('pagecdn-webp-cache');

