<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vlf_email_address');
delete_site_option('vlf_email_address');
delete_option('vlf_api_token');
delete_site_option('vlf_api_token');

