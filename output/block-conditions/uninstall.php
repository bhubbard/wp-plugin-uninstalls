<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('desktop_breakopint');
delete_site_option('desktop_breakopint');
delete_option('tablet_breakopint_start');
delete_site_option('tablet_breakopint_start');
delete_option('tablet_breakopint_end');
delete_site_option('tablet_breakopint_end');
delete_option('mobile_breakopint_end');
delete_site_option('mobile_breakopint_end');

