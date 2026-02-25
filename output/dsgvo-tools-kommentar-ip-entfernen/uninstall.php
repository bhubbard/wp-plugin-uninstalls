<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fhw_dsgvo_kommentar_time_removement');
delete_site_option('fhw_dsgvo_kommentar_time_removement');
delete_option('fhw_dsgvo_kommentar_removement_time');
delete_site_option('fhw_dsgvo_kommentar_removement_time');

// Clear Cron Jobs
wp_clear_scheduled_hook('fhw_dsgvo_kommentare_rotation');

