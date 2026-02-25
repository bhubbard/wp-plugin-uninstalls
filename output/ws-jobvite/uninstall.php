<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jobvite_api_key');
delete_site_option('jobvite_api_key');
delete_option('jobvite_secret_key');
delete_site_option('jobvite_secret_key');
delete_option('jobvite_company_id');
delete_site_option('jobvite_company_id');

