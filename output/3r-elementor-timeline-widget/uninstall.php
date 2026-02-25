<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('twae_hide_upgrade_notice_editor');
delete_site_option('twae_hide_upgrade_notice_editor');
delete_option('twe_hide_migration_notice');
delete_site_option('twe_hide_migration_notice');

