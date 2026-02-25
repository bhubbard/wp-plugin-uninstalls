<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('consentik_site_id');
delete_site_option('consentik_site_id');
delete_option('consentik_instance_id');
delete_site_option('consentik_instance_id');
delete_option('consentik_enable_gcm');
delete_site_option('consentik_enable_gcm');

