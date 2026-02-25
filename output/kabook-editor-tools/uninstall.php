<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kabook_editor_tools_settings');
delete_site_option('kabook_editor_tools_settings');

// Delete Transients
delete_transient('kabook_activated_notice');
delete_site_transient('kabook_activated_notice');

