<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pssec_ignore_whitelist');
delete_site_option('pssec_ignore_whitelist');
delete_option('pssec_ignore_blacklist');
delete_site_option('pssec_ignore_blacklist');
delete_option('pssec_ignore_high_requests');
delete_site_option('pssec_ignore_high_requests');
delete_option('pssec_country_whitelist');
delete_site_option('pssec_country_whitelist');
delete_option('pssec_api_key');
delete_site_option('pssec_api_key');
delete_option('pssec_user_id');
delete_site_option('pssec_user_id');
delete_option('pssec_host');
delete_site_option('pssec_host');
delete_option('pssec_high_request_count');
delete_site_option('pssec_high_request_count');
delete_option('pssec_countries_whitelisted');
delete_site_option('pssec_countries_whitelisted');
delete_option('ssec_ignore_blacklist');
delete_site_option('ssec_ignore_blacklist');

