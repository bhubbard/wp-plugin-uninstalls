<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('STCMP_custom_consent_partner_id');
delete_site_option('STCMP_custom_consent_partner_id');
delete_option('STCMP_custom_consent_config_id');
delete_site_option('STCMP_custom_consent_config_id');
delete_option('STCMP_custom_consent_email');
delete_site_option('STCMP_custom_consent_email');
delete_option('STCMP_custom_consent_domain');
delete_site_option('STCMP_custom_consent_domain');
delete_option('STCMP_custom_consent_url');
delete_site_option('STCMP_custom_consent_url');
delete_option('STCMP_custom_consent_accept_cgv');
delete_site_option('STCMP_custom_consent_accept_cgv');
delete_option('STCMP_error_api');
delete_site_option('STCMP_error_api');

