<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alm_users_license_key');
delete_site_option('alm_users_license_key');

// Delete Transients
delete_transient('alm_users_extension_pro_admin_notice');
delete_site_transient('alm_users_extension_pro_admin_notice');

