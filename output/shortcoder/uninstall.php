<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shortcoder_last_changelog');
delete_site_option('shortcoder_last_changelog');
delete_option('sc_settings');
delete_site_option('sc_settings');
delete_option('shortcoder_version');
delete_site_option('shortcoder_version');
delete_option('shortcoder_data');
delete_site_option('shortcoder_data');
delete_option('shortcoder_flags');
delete_site_option('shortcoder_flags');

// Delete Transients
delete_transient('sc_upgrade');
delete_site_transient('sc_upgrade');

