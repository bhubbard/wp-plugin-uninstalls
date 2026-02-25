<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('loginviaexchange_ews_url');
delete_site_option('loginviaexchange_ews_url');
delete_option('loginviaexchange_allow_wp_user');
delete_site_option('loginviaexchange_allow_wp_user');
delete_option('loginviaexchange_version');
delete_site_option('loginviaexchange_version');

