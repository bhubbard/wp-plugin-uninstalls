<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpat_api_key');
delete_site_option('wpat_api_key');
delete_option('wpat_capital_strategy_cat');
delete_site_option('wpat_capital_strategy_cat');
delete_option('wpat_capital_strategy_tag');
delete_site_option('wpat_capital_strategy_tag');
delete_option('wpat_ignore_prior');
delete_site_option('wpat_ignore_prior');

// Delete Transients
delete_transient('wpat_activation_admin_notice_transient');
delete_site_transient('wpat_activation_admin_notice_transient');

