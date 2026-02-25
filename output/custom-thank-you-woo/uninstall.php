<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('custom_thank_you_woo_page_id');
delete_site_option('custom_thank_you_woo_page_id');

