<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_sls_forms_endpoint');
delete_site_option('wp_sls_forms_endpoint');
delete_option('wp_sls_forms_redirect');
delete_site_option('wp_sls_forms_redirect');

