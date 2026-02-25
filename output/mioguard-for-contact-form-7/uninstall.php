<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mioguardsg_rate_limit');
delete_site_option('mioguardsg_rate_limit');
delete_option('mioguardsg_honeypot_field');
delete_site_option('mioguardsg_honeypot_field');
delete_option('mioguard_show_badge');
delete_site_option('mioguard_show_badge');

