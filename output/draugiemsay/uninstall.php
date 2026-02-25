<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('draugiemsay_apikey');
delete_site_option('draugiemsay_apikey');
delete_option('cligsapi');
delete_site_option('cligsapi');
delete_option('draugiemsay_pretext');
delete_site_option('draugiemsay_pretext');
delete_option('draugiemsay_profile');
delete_site_option('draugiemsay_profile');
delete_option('draugiemsay_authcode');
delete_site_option('draugiemsay_authcode');
delete_option('draugiemsay_email');
delete_site_option('draugiemsay_email');

