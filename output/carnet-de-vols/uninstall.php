<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gdcarnet_updated');
delete_site_option('gdcarnet_updated');
delete_option('dest_notes');
delete_site_option('dest_notes');
delete_option('gdcarnet_dest_notes');
delete_site_option('gdcarnet_dest_notes');
delete_option('prevalidation');
delete_site_option('prevalidation');
delete_option('gdcarnet_prevalidation');
delete_site_option('gdcarnet_prevalidation');
delete_option('gdcarnet_db_updated');
delete_site_option('gdcarnet_db_updated');
delete_option('mensualite_std');
delete_site_option('mensualite_std');
delete_option('gdcarnet_dest_entretien');
delete_site_option('gdcarnet_dest_entretien');
delete_option('gdcarnet_last_auto_exec');
delete_site_option('gdcarnet_last_auto_exec');
delete_option('gdcarnet_last_auto_credit');
delete_site_option('gdcarnet_last_auto_credit');
delete_option('geo_account_enable_multi');
delete_site_option('geo_account_enable_multi');

// Clear Cron Jobs
wp_clear_scheduled_hook('gdcarnet_cotisations_planifiees');

