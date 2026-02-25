<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tfm_api_key');
delete_site_option('tfm_api_key');
delete_option('tfm_company_name');
delete_site_option('tfm_company_name');
delete_option('tfm_company_id');
delete_site_option('tfm_company_id');

