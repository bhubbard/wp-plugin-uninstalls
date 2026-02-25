<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('oodsp_settings');
delete_site_option('oodsp_settings');

// Delete Transients
delete_transient('oodsp_create_docspace_user_transient');
delete_site_transient('oodsp_create_docspace_user_transient');

