<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lcfwp_widget_url');
delete_site_option('lcfwp_widget_url');
delete_option('lcfwp_third_party_url');
delete_site_option('lcfwp_third_party_url');
delete_option('lcfwp_status');
delete_site_option('lcfwp_status');
delete_option('lcfwp_username');
delete_site_option('lcfwp_username');
delete_option('lcfwp_password');
delete_site_option('lcfwp_password');

// Delete Transients
delete_transient('lcfwp_admin_notice');
delete_site_transient('lcfwp_admin_notice');

