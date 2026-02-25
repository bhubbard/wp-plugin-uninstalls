<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gritonl_cwac_acurl');
delete_site_option('gritonl_cwac_acurl');
delete_option('gritonl_cwac_acapikey');
delete_site_option('gritonl_cwac_acapikey');
delete_option('gritonl_cwac_acgood');
delete_site_option('gritonl_cwac_acgood');
delete_option('gritonl_cwac_aclist');
delete_site_option('gritonl_cwac_aclist');
delete_option('gritonl_cwac_accode');
delete_site_option('gritonl_cwac_accode');
delete_option('gritonl_cwac_accodeon');
delete_site_option('gritonl_cwac_accodeon');
delete_option('gritonl_cwac_aclists');
delete_site_option('gritonl_cwac_aclists');
delete_option('gritonl_cwac_actags');
delete_site_option('gritonl_cwac_actags');

