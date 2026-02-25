<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hide-price-by-role');
delete_site_option('hide-price-by-role');
delete_option('replace_price_by_text');
delete_site_option('replace_price_by_text');
delete_option('status-hpfwc');
delete_site_option('status-hpfwc');
delete_option('status-hide-price-by-role');
delete_site_option('status-hide-price-by-role');
delete_option('hpfwc-display-type');
delete_site_option('hpfwc-display-type');
delete_option('hpfwc-form-type');
delete_site_option('hpfwc-form-type');
delete_option('custom-redirect-url');
delete_site_option('custom-redirect-url');
delete_option('hpfwc-custom-text');
delete_site_option('hpfwc-custom-text');

