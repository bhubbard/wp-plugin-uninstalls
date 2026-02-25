<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('openinviter_settings');
delete_site_option('openinviter_settings');
delete_option('openinviter_title');
delete_site_option('openinviter_title');
delete_option('widget_inviter');
delete_site_option('widget_inviter');

