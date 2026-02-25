<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('comarquage_global_pivot_enable');
delete_site_option('comarquage_global_pivot_enable');
delete_option('comarquage_global_css_enable');
delete_site_option('comarquage_global_css_enable');
delete_option('comarquage_global_js_leaflet_enable');
delete_site_option('comarquage_global_js_leaflet_enable');
delete_option('comarquage_global_poweredby');
delete_site_option('comarquage_global_poweredby');
delete_option('comarquage_debug_enable');
delete_site_option('comarquage_debug_enable');
delete_option('comarquage_update_time');
delete_site_option('comarquage_update_time');

// Delete Transients
delete_transient('comarquage_od_notice_dismissed');
delete_site_transient('comarquage_od_notice_dismissed');

// Clear Cron Jobs
wp_clear_scheduled_hook('comarquage_daily_xml_update');

