<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('avp_cookie_duration');
delete_site_option('avp_cookie_duration');
delete_option('avp_redirect_url');
delete_site_option('avp_redirect_url');
delete_option('avp_logo');
delete_site_option('avp_logo');
delete_option('avp_title');
delete_site_option('avp_title');
delete_option('avp_enter_text');
delete_site_option('avp_enter_text');
delete_option('avp_exit_text');
delete_site_option('avp_exit_text');
delete_option('avp_verification_method');
delete_site_option('avp_verification_method');

