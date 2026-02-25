<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nomorepass-show-form');
delete_site_option('nomorepass-show-form');
delete_option('nomorepass-show-resetpass');
delete_site_option('nomorepass-show-resetpass');
delete_option('nomorepass-auto-qr');
delete_site_option('nomorepass-auto-qr');
delete_option('nomorepass-auto-login');
delete_site_option('nomorepass-auto-login');
delete_option('nomorepass-login-only');
delete_site_option('nomorepass-login-only');
delete_option('nomorepass-custom-logo');
delete_site_option('nomorepass-custom-logo');
delete_option('nomorepass-custom-msg');
delete_site_option('nomorepass-custom-msg');

