<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kitbix_commerce_settings');
delete_site_option('kitbix_commerce_settings');
delete_option('kitbix_commerce_pages');
delete_site_option('kitbix_commerce_pages');
delete_option('kitbix_commerce_currency');
delete_site_option('kitbix_commerce_currency');

