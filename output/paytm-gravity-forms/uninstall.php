<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gf_paytm_form_version');
delete_site_option('gf_paytm_form_version');
delete_option('gf_paytm_form_settings');
delete_site_option('gf_paytm_form_settings');
delete_option('gf_paytm_form_site_name');
delete_site_option('gf_paytm_form_site_name');
delete_option('gf_paytm_form_auth_token');
delete_site_option('gf_paytm_form_auth_token');
delete_option('recently_activated');
delete_site_option('recently_activated');

