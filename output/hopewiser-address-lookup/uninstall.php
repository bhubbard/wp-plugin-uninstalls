<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('HPWAddrLookup_GeneralSettings');
delete_site_option('HPWAddrLookup_GeneralSettings');
delete_option('HPWAddrLookup_Forms');
delete_site_option('HPWAddrLookup_Forms');
delete_option('HPWAddrLookup_Woo');
delete_site_option('HPWAddrLookup_Woo');

