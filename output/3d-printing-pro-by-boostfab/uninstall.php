<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('boostfab_api_token');
delete_site_option('boostfab_api_token');
delete_option('boostfab_organization_slug');
delete_site_option('boostfab_organization_slug');
delete_option('boostfab_cookie_policy');
delete_site_option('boostfab_cookie_policy');
delete_option('boostfab_primary_color');
delete_site_option('boostfab_primary_color');
delete_option('boostfab_sample_quotation_page_created');
delete_site_option('boostfab_sample_quotation_page_created');

