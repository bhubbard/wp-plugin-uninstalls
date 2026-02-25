<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('WpLeadBuilderProActivatedPlugin');
delete_site_option('WpLeadBuilderProActivatedPlugin');
delete_option('Sync_value_on_off');
delete_site_option('Sync_value_on_off');

