<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chatbox_manager_settings');
delete_site_option('chatbox_manager_settings');
delete_option('cm-dismissed-notice');
delete_site_option('cm-dismissed-notice');

