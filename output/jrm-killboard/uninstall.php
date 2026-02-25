<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jrm_killboard_corporation_id');
delete_site_option('jrm_killboard_corporation_id');
delete_option('jrm_killboard_elements');
delete_site_option('jrm_killboard_elements');
delete_option('jrm_killboard_be_elements');
delete_site_option('jrm_killboard_be_elements');
delete_option('jrm_killboard_lastSync');
delete_site_option('jrm_killboard_lastSync');
delete_option('jrm_killboard_esi_expires_in');
delete_site_option('jrm_killboard_esi_expires_in');
delete_option('jrm_killboard_esi_access_token');
delete_site_option('jrm_killboard_esi_access_token');
delete_option('jrm_killboard_esi_refresh_token');
delete_site_option('jrm_killboard_esi_refresh_token');
delete_option('jrm_killboard_killmail_error');
delete_site_option('jrm_killboard_killmail_error');
delete_option('jrm_killboard_killmail_log');
delete_site_option('jrm_killboard_killmail_log');
delete_option('jrm_killboard_fetch_start');
delete_site_option('jrm_killboard_fetch_start');
delete_option('jrm_killboard_esi_client_id');
delete_site_option('jrm_killboard_esi_client_id');
delete_option('jrm_killboard_esi_client_secret');
delete_site_option('jrm_killboard_esi_client_secret');
delete_option('jrm_killboard_oauth_version');
delete_site_option('jrm_killboard_oauth_version');
delete_option('jrm_killboard_plugin_version');
delete_site_option('jrm_killboard_plugin_version');
delete_option('jrm_killboard_cronjob_endpoint');
delete_site_option('jrm_killboard_cronjob_endpoint');
delete_option('jrm_killboard_cronjob_secret');
delete_site_option('jrm_killboard_cronjob_secret');
delete_option('jrm_killboard_title');
delete_site_option('jrm_killboard_title');
delete_option('jrm_killboard_title_align');
delete_site_option('jrm_killboard_title_align');
delete_option('jrm_killboard_max_sync');
delete_site_option('jrm_killboard_max_sync');
delete_option('jrm_killboard_font_size');
delete_site_option('jrm_killboard_font_size');
delete_option('jrm_killboard_image_size');
delete_site_option('jrm_killboard_image_size');
delete_option('jrm_killboard_margin');
delete_site_option('jrm_killboard_margin');
delete_option('jrm_killboard_padding');
delete_site_option('jrm_killboard_padding');
delete_option('jrm_killboard_kills_type');
delete_site_option('jrm_killboard_kills_type');
delete_option('jrm_killboard_kills_bg');
delete_site_option('jrm_killboard_kills_bg');
delete_option('jrm_killboard_kills_text');
delete_site_option('jrm_killboard_kills_text');
delete_option('jrm_killboard_deaths_bg');
delete_site_option('jrm_killboard_deaths_bg');
delete_option('jrm_killboard_deaths_text');
delete_site_option('jrm_killboard_deaths_text');
delete_option('jrm_killboard_title_color');
delete_site_option('jrm_killboard_title_color');
delete_option('jrm_killboard_title_text');
delete_site_option('jrm_killboard_title_text');
delete_option('jrm_killboard_table_header_color');
delete_site_option('jrm_killboard_table_header_color');
delete_option('jrm_killboard_table_header_text');
delete_site_option('jrm_killboard_table_header_text');
delete_option('jrm_killboard_footer_color');
delete_site_option('jrm_killboard_footer_color');
delete_option('jrm_killboard_footer_text');
delete_site_option('jrm_killboard_footer_text');
delete_option('jrm_killboard_inspect_color');
delete_site_option('jrm_killboard_inspect_color');
delete_option('jrm_killboard_inspect_text');
delete_site_option('jrm_killboard_inspect_text');
delete_option('jrm_killboard_cols');
delete_site_option('jrm_killboard_cols');
delete_option('jrm_killboard_dev_sign');
delete_site_option('jrm_killboard_dev_sign');
delete_option('jrm_killboard_btn_styles');
delete_site_option('jrm_killboard_btn_styles');
delete_option('jrm_killboard_btn_align');
delete_site_option('jrm_killboard_btn_align');
delete_option('jrm_killboard_image_styles');
delete_site_option('jrm_killboard_image_styles');
delete_option('jrm_killboard_last_page');
delete_site_option('jrm_killboard_last_page');
delete_option('jrm_killboard_inspect_items');
delete_site_option('jrm_killboard_inspect_items');
delete_option('jrm_killboard_price_error');
delete_site_option('jrm_killboard_price_error');
delete_option('jrm_killboard_price_log');
delete_site_option('jrm_killboard_price_log');
delete_option('jrm_killboard_esi_init_call');
delete_site_option('jrm_killboard_esi_init_call');
delete_option('jrm_killboard_table_hedaer_text');
delete_site_option('jrm_killboard_table_hedaer_text');

// Clear Cron Jobs
wp_clear_scheduled_hook('jrm_killboard_cronjob');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

