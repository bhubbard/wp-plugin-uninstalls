<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('solid_sso_option');
delete_site_option('solid_sso_option');
delete_option('hclpage');
delete_site_option('hclpage');

