<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adtf_integrations');
delete_site_option('adtf_integrations');
delete_option('adtf_installed');
delete_site_option('adtf_installed');
delete_option('adtf_version');
delete_site_option('adtf_version');
delete_option('adtf_cf7_used');
delete_site_option('adtf_cf7_used');

