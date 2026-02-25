<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('secretkey');
delete_site_option('secretkey');
delete_option('ddosrecaptcha');
delete_site_option('ddosrecaptcha');
delete_option('sitekey');
delete_site_option('sitekey');
delete_option('ddosrecaptchamsg1');
delete_site_option('ddosrecaptchamsg1');
delete_option('ddosrecaptchamsg2');
delete_site_option('ddosrecaptchamsg2');
delete_option('ddosrecaptchamsg3');
delete_site_option('ddosrecaptchamsg3');
delete_option('ddosrecaptchabutton');
delete_site_option('ddosrecaptchabutton');
delete_option('ddosrecaptchalockurl1');
delete_site_option('ddosrecaptchalockurl1');
delete_option('ddosrecaptchalockurl2');
delete_site_option('ddosrecaptchalockurl2');
delete_option('ddosrecaptchalockurl3');
delete_site_option('ddosrecaptchalockurl3');

