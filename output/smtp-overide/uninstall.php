<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smtp_override_cbezzy_default_test_email');
delete_site_option('smtp_override_cbezzy_default_test_email');
delete_option('smtp_override_bypass_ssl_verify_cbezzy');
delete_site_option('smtp_override_bypass_ssl_verify_cbezzy');

