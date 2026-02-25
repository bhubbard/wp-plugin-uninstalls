<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('newstatpress_externalapi');
delete_site_option('newstatpress_externalapi');
delete_option('newstatpress_apikey');
delete_site_option('newstatpress_apikey');
delete_option('newstatpress_daysinoverviewgraph');
delete_site_option('newstatpress_daysinoverviewgraph');
delete_option('newstatpress_el_top_days');
delete_site_option('newstatpress_el_top_days');
delete_option('newstatpress_el_os');
delete_site_option('newstatpress_el_os');
delete_option('newstatpress_el_browser');
delete_site_option('newstatpress_el_browser');
delete_option('newstatpress_el_feed');
delete_site_option('newstatpress_el_feed');
delete_option('newstatpress_el_searchengine');
delete_site_option('newstatpress_el_searchengine');
delete_option('newstatpress_el_search');
delete_site_option('newstatpress_el_search');
delete_option('newstatpress_el_referrer');
delete_site_option('newstatpress_el_referrer');
delete_option('newstatpress_el_languages');
delete_site_option('newstatpress_el_languages');
delete_option('newstatpress_el_spiders');
delete_site_option('newstatpress_el_spiders');
delete_option('newstatpress_el_pages');
delete_site_option('newstatpress_el_pages');
delete_option('newstatpress_el_visitors');
delete_site_option('newstatpress_el_visitors');
delete_option('newstatpress_el_daypages');
delete_site_option('newstatpress_el_daypages');
delete_option('newstatpress_el_ippages');
delete_site_option('newstatpress_el_ippages');
delete_option('newstatpress_dashboard');
delete_site_option('newstatpress_dashboard');
delete_option('newstatpress_admin_notices');
delete_site_option('newstatpress_admin_notices');
delete_option('newstatpress_collectloggeduser');
delete_site_option('newstatpress_collectloggeduser');
delete_option('newstatpress_donotcollectspider');
delete_site_option('newstatpress_donotcollectspider');
delete_option('newstatpress_cryptip');
delete_site_option('newstatpress_cryptip');
delete_option('newstatpress_ignore_ip');
delete_site_option('newstatpress_ignore_ip');
delete_option('newstatpress_ignore_users');
delete_site_option('newstatpress_ignore_users');
delete_option('newstatpress_ignore_permalink');
delete_site_option('newstatpress_ignore_permalink');
delete_option('newstatpress_stats_offsets');
delete_site_option('newstatpress_stats_offsets');
delete_option('newstatpress_mail_notification_emailaddress');
delete_site_option('newstatpress_mail_notification_emailaddress');
delete_option('newstatpress_el_overview');
delete_site_option('newstatpress_el_overview');
delete_option('newstatpress_exporttool');
delete_site_option('newstatpress_exporttool');
delete_option('newstatpress_updateint');
delete_site_option('newstatpress_updateint');
delete_option('newstatpress_bot_per_page_spybot');
delete_site_option('newstatpress_bot_per_page_spybot');
delete_option('newstatpress_visits_per_bot_spybot');
delete_site_option('newstatpress_visits_per_bot_spybot');
delete_option('newstatpress_ip_per_page_newspy');
delete_site_option('newstatpress_ip_per_page_newspy');
delete_option('newstatpress_visits_per_ip_newspy');
delete_site_option('newstatpress_visits_per_ip_newspy');
delete_option('newstatpress_version');
delete_site_option('newstatpress_version');
delete_option('newstatpress_menutools_cap');
delete_site_option('newstatpress_menutools_cap');
delete_option('newstatpress_settings');
delete_site_option('newstatpress_settings');
delete_option('newstatpress_menuoverview_cap');
delete_site_option('newstatpress_menuoverview_cap');
delete_option('newstatpress_menudetails_cap');
delete_site_option('newstatpress_menudetails_cap');
delete_option('newstatpress_menuvisits_cap');
delete_site_option('newstatpress_menuvisits_cap');
delete_option('newstatpress_menusearch_cap');
delete_site_option('newstatpress_menusearch_cap');
delete_option('newstatpress_menuoptions_cap');
delete_site_option('newstatpress_menuoptions_cap');
delete_option('newstatpress_mail_notification_info');
delete_site_option('newstatpress_mail_notification_info');
delete_option('newstatpress_autodelete');
delete_site_option('newstatpress_autodelete');
delete_option('newstatpress_autodelete_spiders');
delete_site_option('newstatpress_autodelete_spiders');
delete_option('widget_newstatpress');
delete_site_option('widget_newstatpress');
delete_option('widget_newstatpresstopposts');
delete_site_option('widget_newstatpresstopposts');

// Clear Cron Jobs
wp_clear_scheduled_hook('nsp_mail_notification');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'newstatpress_nag_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'newstatpress_nag_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'newstatpress_nag_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'newstatpress_nag_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'newstatpress_nag_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'newstatpress_nag_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'newstatpress_nag_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'newstatpress_nag_status' ) );

