<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wppa_search_linkpage');
delete_site_option('wppa_search_linkpage');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'stop-pdfcnv-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wppa_art_monkey_link');
delete_site_option('wppa_art_monkey_link');
delete_option('wppa_art_monkey_on');
delete_site_option('wppa_art_monkey_on');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wppa_mailinglist_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_status' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_lastkey' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wppa_recursive_log');
delete_site_option('wppa_recursive_log');
delete_option('wppa_last_error');
delete_site_option('wppa_last_error');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_lasttimestamp' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wppa_search_page');
delete_site_option('wppa_search_page');
delete_option('wppa_use_wp_upload_dir_locations');
delete_site_option('wppa_use_wp_upload_dir_locations');
delete_option('wppa_source_dir');
delete_site_option('wppa_source_dir');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_user' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wppa-set');
delete_site_option('wppa-set');
delete_option('wppa_pl_htaccess_required');
delete_site_option('wppa_pl_htaccess_required');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wppa_import_source_type_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wppa_import_source_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wppa_photo_shortcode_enabled');
delete_site_option('wppa_photo_shortcode_enabled');
delete_option('wppa_album_use_gallery');
delete_site_option('wppa_album_use_gallery');
delete_option('wppa_album_crypt_0');
delete_site_option('wppa_album_crypt_0');
delete_option('wppa_album_crypt_1');
delete_site_option('wppa_album_crypt_1');
delete_option('wppa_album_crypt_2');
delete_site_option('wppa_album_crypt_2');
delete_option('wppa_album_crypt_3');
delete_site_option('wppa_album_crypt_3');
delete_option('wppa_album_crypt_9');
delete_site_option('wppa_album_crypt_9');
delete_option('wppa_orphan_album');
delete_site_option('wppa_orphan_album');
delete_option('wppa_index_need_remake');
delete_site_option('wppa_index_need_remake');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_togo' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_last' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wppa-media-export-ids');
delete_site_option('wppa-media-export-ids');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wppa_watermark_file_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wppa_watermark_pos_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wppa_skinfile');
delete_site_option('wppa_skinfile');
delete_option('wppa_cronmsg_is_dismissed');
delete_site_option('wppa_cronmsg_is_dismissed');
delete_option('wppa_cache_hits');
delete_site_option('wppa_cache_hits');
delete_option('wppa_cache_misses');
delete_site_option('wppa_cache_misses');
delete_option('wppa_child_list');
delete_site_option('wppa_child_list');
delete_option('wppa_area_size');
delete_site_option('wppa_area_size');
delete_option('wppa_sent_mails');
delete_site_option('wppa_sent_mails');
delete_option('wppa_slideshow_linktype');
delete_site_option('wppa_slideshow_linktype');
delete_option('wppa_ajax_method');
delete_site_option('wppa_ajax_method');
delete_option('wppa_pending_message');
delete_site_option('wppa_pending_message');
delete_option('wppa_show_empty_thumblist');
delete_site_option('wppa_show_empty_thumblist');
delete_option('wppa_set');
delete_site_option('wppa_set');
delete_option('wppa_taglist');
delete_site_option('wppa_taglist');
delete_option('wppa_catlist');
delete_site_option('wppa_catlist');
delete_option('wppa_show_scgens');
delete_site_option('wppa_show_scgens');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wppa_paging_parms_%', '_site_transient_wppa_paging_parms_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wppa_rela_%', '_site_transient_wppa_rela_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wppa_%', '_site_transient_wppa_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('wppa_cron_event');
wp_clear_scheduled_hook('wppa_cleanup');
wp_clear_scheduled_hook('wppa_update_treecounts');
wp_clear_scheduled_hook('wppa_do_mailinglist_cron');
wp_clear_scheduled_hook('wppa_pdf_to_album');

