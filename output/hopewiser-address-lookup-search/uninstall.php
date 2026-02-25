<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('HPWAAddrLookup_Forms');
delete_site_option('HPWAAddrLookup_Forms');
delete_option('HPWAAddrLookup_GeneralSettings');
delete_site_option('HPWAAddrLookup_GeneralSettings');

