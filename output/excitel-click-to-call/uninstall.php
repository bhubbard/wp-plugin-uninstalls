<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('voipApp-settings');
delete_site_option('voipApp-settings');
delete_option('myplug_modify_widget');
delete_site_option('myplug_modify_widget');

