<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('diet_apiusername');
delete_site_option('diet_apiusername');
delete_option('diet_apipassword');
delete_site_option('diet_apipassword');
delete_option('wtc_provider');
delete_site_option('wtc_provider');
delete_option('tinypng_apikey');
delete_site_option('tinypng_apikey');
delete_option('kraken_apikey');
delete_site_option('kraken_apikey');
delete_option('kraken_secretkey');
delete_site_option('kraken_secretkey');
delete_option('wtc_media_compress');
delete_site_option('wtc_media_compress');
delete_option('wtc_compress_css');
delete_site_option('wtc_compress_css');
delete_option('wtc_compress_html');
delete_site_option('wtc_compress_html');
delete_option('wtc_compress_js');
delete_site_option('wtc_compress_js');
delete_option('wtc_compress_main_css');
delete_site_option('wtc_compress_main_css');

