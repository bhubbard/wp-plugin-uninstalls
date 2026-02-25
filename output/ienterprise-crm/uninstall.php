<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ienterprisecrm_endpoint');
delete_site_option('ienterprisecrm_endpoint');
delete_option('ienterprisecrm_submitbtn');
delete_site_option('ienterprisecrm_submitbtn');
delete_option('ienterprisecrm_username');
delete_site_option('ienterprisecrm_username');
delete_option('ienterprisecrm_password');
delete_site_option('ienterprisecrm_password');
delete_option('ienterprisecrm_recaptcha');
delete_site_option('ienterprisecrm_recaptcha');
delete_option('ienterprisecrm_recaptcha_key');
delete_site_option('ienterprisecrm_recaptcha_key');
delete_option('ienterprisecrm_recaptcha_secret');
delete_site_option('ienterprisecrm_recaptcha_secret');
delete_option('ienterprisecrm_is_connected');
delete_site_option('ienterprisecrm_is_connected');
delete_option('ienterprisecrm_fields');
delete_site_option('ienterprisecrm_fields');
delete_option('ienterprisecrm_keywords');
delete_site_option('ienterprisecrm_keywords');

