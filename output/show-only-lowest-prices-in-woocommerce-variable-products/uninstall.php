<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ayudawp_lowest_prices_options');
delete_site_option('ayudawp_lowest_prices_options');

// Delete Transients
delete_transient('ayudawp_update_default_text');
delete_site_transient('ayudawp_update_default_text');
delete_transient('ayudawp_lowest_prices_activation_notice');
delete_site_transient('ayudawp_lowest_prices_activation_notice');

