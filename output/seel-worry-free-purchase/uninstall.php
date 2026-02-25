<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('seelwopu_admin_user');
delete_site_option('seelwopu_admin_user');
delete_option('seelwopu_debug_mode');
delete_site_option('seelwopu_debug_mode');
delete_option('seelwopu_wc_auth_token');
delete_site_option('seelwopu_wc_auth_token');
delete_option('seelwopu_wc_auth_date');
delete_site_option('seelwopu_wc_auth_date');
delete_option('seelwopu_oauth_state');
delete_site_option('seelwopu_oauth_state');
delete_option('seelwopu_oauth_timestamp');
delete_site_option('seelwopu_oauth_timestamp');
delete_option('woocommerce_email_from_address');
delete_site_option('woocommerce_email_from_address');

