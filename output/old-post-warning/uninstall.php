<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('opw_nodays');
delete_site_option('opw_nodays');
delete_option('opw_warning');
delete_site_option('opw_warning');

