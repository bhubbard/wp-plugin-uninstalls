<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gf_entryexpiration_message_displayed');
delete_site_option('gf_entryexpiration_message_displayed');
delete_option('gf_entryexpiration_lifetime_processed');
delete_site_option('gf_entryexpiration_lifetime_processed');

// Clear Cron Jobs
wp_clear_scheduled_hook('gf_entryexpiration_maybe_expire');
wp_clear_scheduled_hook('gf_entryexpiration_delete_old_entries');

