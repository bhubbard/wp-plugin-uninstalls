<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('srlr_role_redirects');
delete_site_option('srlr_role_redirects');

// Delete Transients
delete_transient('srlr_activation_notice');
delete_site_transient('srlr_activation_notice');
delete_transient('srlr_settings_saved');
delete_site_transient('srlr_settings_saved');

