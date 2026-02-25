<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('guru_woo_lac_options');
delete_site_option('guru_woo_lac_options');
delete_option('simple_wc_shoplinks_options');
delete_site_option('simple_wc_shoplinks_options');

