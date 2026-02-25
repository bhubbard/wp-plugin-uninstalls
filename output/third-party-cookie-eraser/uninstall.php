<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('third_party_cookie_eraser_cookie_name');
delete_site_option('third_party_cookie_eraser_cookie_name');
delete_option('third_party_cookie_eraser_cookie_value');
delete_site_option('third_party_cookie_eraser_cookie_value');
delete_option('third_party_cookie_eraser_lang');
delete_site_option('third_party_cookie_eraser_lang');

