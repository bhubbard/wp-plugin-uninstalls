<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('authorizeipaddress_ip_whitelist');
delete_site_option('authorizeipaddress_ip_whitelist');
delete_option('authorizeipaddress');
delete_site_option('authorizeipaddress');

