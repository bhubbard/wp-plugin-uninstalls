<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('AppStore_country');
delete_site_option('AppStore_country');
delete_option('AppStore_language');
delete_site_option('AppStore_language');
delete_option('AppStore_enableStats');
delete_site_option('AppStore_enableStats');
delete_option('AppStore_Loop');
delete_site_option('AppStore_Loop');
delete_option('AppStore_tdlink');
delete_site_option('AppStore_tdlink');
delete_option('AppStore_customAffURL');
delete_site_option('AppStore_customAffURL');
delete_option('AppStore_PHGToken');
delete_site_option('AppStore_PHGToken');
delete_option('AppStore_showRatings');
delete_site_option('AppStore_showRatings');
delete_option('AppStore_picCache');
delete_site_option('AppStore_picCache');
delete_option('AppStore_dataCache');
delete_site_option('AppStore_dataCache');
delete_option('AppStore_dlLinkname');
delete_site_option('AppStore_dlLinkname');
delete_option('AppStore_SimpleClickCounter');
delete_site_option('AppStore_SimpleClickCounter');
delete_option('appStore_db_version');
delete_site_option('appStore_db_version');
delete_option('AppStore_style');
delete_site_option('AppStore_style');

