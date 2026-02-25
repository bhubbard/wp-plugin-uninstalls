<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eelv_url_redirect');
delete_site_option('eelv_url_redirect');
delete_option('eelv_when_redirect');
delete_site_option('eelv_when_redirect');
delete_option('eelv_code_redirect');
delete_site_option('eelv_code_redirect');

