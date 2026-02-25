<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('woocommerce_xumm_admin_notices');
delete_site_transient('woocommerce_xumm_admin_notices');

