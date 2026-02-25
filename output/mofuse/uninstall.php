<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mf_sid');
delete_site_option('mf_sid');
delete_option('mf_redirect');
delete_site_option('mf_redirect');
delete_option('mf_sms');
delete_site_option('mf_sms');
delete_option('mf_cname');
delete_site_option('mf_cname');
delete_option('mf_iphone');
delete_site_option('mf_iphone');

