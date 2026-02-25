<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('security_headers_hsts_time');
delete_site_option('security_headers_hsts_time');
delete_option('security_headers_hsts_subdomains');
delete_site_option('security_headers_hsts_subdomains');
delete_option('security_headers_hsts_preload');
delete_site_option('security_headers_hsts_preload');
delete_option('security_headers_nosniff');
delete_site_option('security_headers_nosniff');
delete_option('security_headers_xss');
delete_site_option('security_headers_xss');
delete_option('security_headers_frame');
delete_site_option('security_headers_frame');
delete_option('security_headers_hpkp_key1');
delete_site_option('security_headers_hpkp_key1');
delete_option('security_headers_hpkp_key2');
delete_site_option('security_headers_hpkp_key2');
delete_option('security_headers_hpkp_key3');
delete_site_option('security_headers_hpkp_key3');
delete_option('security_headers_hpkp_time');
delete_site_option('security_headers_hpkp_time');
delete_option('security_headers_hpkp_subdomains');
delete_site_option('security_headers_hpkp_subdomains');
delete_option('security_headers_hpkp_uri');
delete_site_option('security_headers_hpkp_uri');
delete_option('security_headers_referrer');
delete_site_option('security_headers_referrer');
delete_option('security_headers_ect_time');
delete_site_option('security_headers_ect_time');
delete_option('security_headers_ect_enforce');
delete_site_option('security_headers_ect_enforce');
delete_option('security_headers_ect_uri');
delete_site_option('security_headers_ect_uri');

