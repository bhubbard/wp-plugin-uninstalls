<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('botfirewall_enabled');
delete_site_option('botfirewall_enabled');
delete_option('botfirewall_allowed_bots');
delete_site_option('botfirewall_allowed_bots');
delete_option('botfirewall_settings');
delete_site_option('botfirewall_settings');
delete_option('botfirewall_customization');
delete_site_option('botfirewall_customization');

