<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('autochmod_safe_again_at');
delete_site_option('autochmod_safe_again_at');

// Clear Cron Jobs
wp_clear_scheduled_hook('rimuovi_permessi_scrittura');

