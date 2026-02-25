<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cuerda_total_choice');
delete_site_option('cuerda_total_choice');
delete_option('cuerda_total_post_status');
delete_site_option('cuerda_total_post_status');
delete_option('cuerda_total_post_type');
delete_site_option('cuerda_total_post_type');
delete_option('cuerda_total_post_ctrl');
delete_site_option('cuerda_total_post_ctrl');
delete_option('cuerda_total_cf_youtube');
delete_site_option('cuerda_total_cf_youtube');
delete_option('cuerda_total_link_override');
delete_site_option('cuerda_total_link_override');
delete_option('cuerda_total_rel_urlpass');
delete_site_option('cuerda_total_rel_urlpass');
delete_option('cuerda_total_optout_log');
delete_site_option('cuerda_total_optout_log');
delete_option('cuerda_total_optout_admininfo');
delete_site_option('cuerda_total_optout_admininfo');
delete_option('cuerda_ynf_rel_count');
delete_site_option('cuerda_ynf_rel_count');
delete_option('cuerda_total_last_delta_run_ts');
delete_site_option('cuerda_total_last_delta_run_ts');
delete_option('cuerda_rev_status_migrated');
delete_site_option('cuerda_rev_status_migrated');
delete_option('cuerda_ynf_id');
delete_site_option('cuerda_ynf_id');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_logo' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_darkmodelogo' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_wide_logo' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cuerda_ynf_output_summary');
delete_site_option('cuerda_ynf_output_summary');
delete_option('cuerda_ynf_subheadline_cf');
delete_site_option('cuerda_ynf_subheadline_cf');
delete_option('cuerda_ynf_title');
delete_site_option('cuerda_ynf_title');
delete_option('cuerda_ynf_enclosure_alt');
delete_site_option('cuerda_ynf_enclosure_alt');
delete_option('cuerda_ynf_rel_photo');
delete_site_option('cuerda_ynf_rel_photo');
delete_option('cuerda_ynf_cf_rel_photo_title');
delete_site_option('cuerda_ynf_cf_rel_photo_title');
delete_option('cuerda_ynf_cf_rel_photo_url');
delete_site_option('cuerda_ynf_cf_rel_photo_url');
delete_option('cuerda_ynf_rel_cf_use');
delete_site_option('cuerda_ynf_rel_cf_use');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_title' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_url' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cuerda_ynf_cf_creator');
delete_site_option('cuerda_ynf_cf_creator');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%add_icatch' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%enclosure_alt' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%hide_icatch_caption' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%hide_icatch_credit' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%title' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%cf_creator' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%cf_creator_url' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cuerda_ynf_priority');
delete_site_option('cuerda_ynf_priority');
delete_option('cuerda_ynf_articletype');
delete_site_option('cuerda_ynf_articletype');
delete_option('cuerda_ynf_ftp_server');
delete_site_option('cuerda_ynf_ftp_server');
delete_option('cuerda_ynf_ftp_user_name');
delete_site_option('cuerda_ynf_ftp_user_name');
delete_option('cuerda_ynf_ftp_password');
delete_site_option('cuerda_ynf_ftp_password');
delete_option('cuerda_ynf_ftp_remote_dir');
delete_site_option('cuerda_ynf_ftp_remote_dir');
delete_option('cuerda_ynf_ftp_port');
delete_site_option('cuerda_ynf_ftp_port');
delete_option('cuerda_ynf_ftp_secure');
delete_site_option('cuerda_ynf_ftp_secure');
delete_option('cuerda_ynf_ftp_put');
delete_site_option('cuerda_ynf_ftp_put');
delete_option('cuerda_ynf_icatch');
delete_site_option('cuerda_ynf_icatch');
delete_option('cuerda_ynf_result_info');
delete_site_option('cuerda_ynf_result_info');
delete_option('cuerda_ynf_debug_info');
delete_site_option('cuerda_ynf_debug_info');
delete_option('cuerda_ynf_ldap_user');
delete_site_option('cuerda_ynf_ldap_user');
delete_option('cuerda_ynf_ldap_pass');
delete_site_option('cuerda_ynf_ldap_pass');

// Delete Transients
delete_transient('cuerda_cached_categories');
delete_site_transient('cuerda_cached_categories');
delete_transient('cuerda_cached_tags');
delete_site_transient('cuerda_cached_tags');
delete_transient('cuerda_cached_authors');
delete_site_transient('cuerda_cached_authors');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_cuerda_ynf_put_cooldown_%', '_site_transient_cuerda_ynf_put_cooldown_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_cuerda_ynf_guard_%', '_site_transient_cuerda_ynf_guard_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('cuerda_ynf_run_debounced');
wp_clear_scheduled_hook('cuerda_ynf_purge_debug');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cuerda_total_has_publish' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cuerda_total_has_publish' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cuerda_total_has_publish' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cuerda_total_has_publish' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cuerda_total_touched_ts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cuerda_total_touched_ts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cuerda_total_touched_ts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cuerda_total_touched_ts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cuerda_total_demoted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cuerda_total_demoted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cuerda_total_demoted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cuerda_total_demoted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cuerda_post_exclude_ynf' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cuerda_post_exclude_ynf' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cuerda_post_exclude_ynf' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cuerda_post_exclude_ynf' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cuerda_revision_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cuerda_revision_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cuerda_revision_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cuerda_revision_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cuerda_revision_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cuerda_revision_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cuerda_revision_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cuerda_revision_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cuerda_ynf_rev' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cuerda_ynf_rev' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cuerda_ynf_rev' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cuerda_ynf_rev' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_cuerda_post_exclude_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_cuerda_post_exclude_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_cuerda_post_exclude_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_cuerda_post_exclude_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cuerda_ynf_first_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cuerda_ynf_first_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cuerda_ynf_first_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cuerda_ynf_first_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cuerda_ynf_last_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cuerda_ynf_last_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cuerda_ynf_last_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cuerda_ynf_last_hash' ) );

