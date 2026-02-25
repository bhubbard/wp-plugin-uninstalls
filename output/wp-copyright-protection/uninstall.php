<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpcp_exclude_pages');
delete_site_option('wpcp_exclude_pages');
delete_option('wpcp_disable_for_regusers');
delete_site_option('wpcp_disable_for_regusers');

