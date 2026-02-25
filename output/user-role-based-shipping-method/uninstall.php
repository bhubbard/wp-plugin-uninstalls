<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('pvalley_user_role_based_shipping');
delete_site_option('pvalley_user_role_based_shipping');
delete_option('pvalley_user_role_based_shipping_rule_matrix');
delete_site_option('pvalley_user_role_based_shipping_rule_matrix');

