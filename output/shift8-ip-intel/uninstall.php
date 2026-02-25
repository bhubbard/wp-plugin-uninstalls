<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shift8_ipintel_encryptionkey');
delete_site_option('shift8_ipintel_encryptionkey');
delete_option('shift8_ipintel_action');
delete_site_option('shift8_ipintel_action');
delete_option('shift8_ipintel_action301');
delete_site_option('shift8_ipintel_action301');
delete_option('shift8_ipintel_email');
delete_site_option('shift8_ipintel_email');
delete_option('shift8_ipintel_timeout');
delete_site_option('shift8_ipintel_timeout');
delete_option('shift8_ipintel_actionthreshold');
delete_site_option('shift8_ipintel_actionthreshold');
delete_option('shift8_ipintel_subdomain');
delete_site_option('shift8_ipintel_subdomain');
delete_option('shift8_ipintel_safemode');
delete_site_option('shift8_ipintel_safemode');
delete_option('shift_ipintel_action');
delete_site_option('shift_ipintel_action');
delete_option('shift8_ipintel_enabled');
delete_site_option('shift8_ipintel_enabled');

