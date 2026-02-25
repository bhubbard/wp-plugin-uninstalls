<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('prixchat_settings');
delete_site_option('prixchat_settings');
delete_option('prixchat_db_version');
delete_site_option('prixchat_db_version');

// Delete Transients
delete_transient('prixchat_users');
delete_site_transient('prixchat_users');

// Clear Cron Jobs
wp_clear_scheduled_hook('prixchat_clear_cache');

