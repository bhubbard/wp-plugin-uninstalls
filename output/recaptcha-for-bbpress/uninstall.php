<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rfb_bbp_recaptcha_registerd_user');
delete_site_option('rfb_bbp_recaptcha_registerd_user');
delete_option('_bbp_allow_anonymous');
delete_site_option('_bbp_allow_anonymous');
delete_option('rfb_bbp_recaptcha_site_key');
delete_site_option('rfb_bbp_recaptcha_site_key');
delete_option('rfb_bbp_recaptcha_server_key');
delete_site_option('rfb_bbp_recaptcha_server_key');

