<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_nomba_settings');
delete_site_option('woocommerce_nomba_settings');

// Delete Transients
delete_transient('wc_nomba_credentials');
delete_site_transient('wc_nomba_credentials');

