<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tmp_auto_terms_st');
delete_site_option('tmp_auto_terms_st');
delete_option('taxopress_autoterms_content');
delete_site_option('taxopress_autoterms_content');
delete_option('taxopress_autolinks');
delete_site_option('taxopress_autolinks');
delete_option('taxopress_default_autolinks');
delete_site_option('taxopress_default_autolinks');
delete_option('taxopress_autolink_ids_increament');
delete_site_option('taxopress_autolink_ids_increament');
delete_option('taxopress_autoterms');
delete_site_option('taxopress_autoterms');
delete_option('taxopress_autoterms_schedule');
delete_site_option('taxopress_autoterms_schedule');
delete_option('taxopress_autoterms_logs_disabled');
delete_site_option('taxopress_autoterms_logs_disabled');
delete_option('taxopress_auto_terms_logs_limit');
delete_site_option('taxopress_auto_terms_logs_limit');
delete_option('taxopress_default_autoterms');
delete_site_option('taxopress_default_autoterms');
delete_option('taxopress_autoterm_ids_increament');
delete_site_option('taxopress_autoterm_ids_increament');
delete_option('taxopress_external_taxonomies');
delete_site_option('taxopress_external_taxonomies');
delete_option('add-terms_taxo');
delete_site_option('add-terms_taxo');
delete_option('add-terms_cpt');
delete_site_option('add-terms_cpt');
delete_option('remove-terms_taxo');
delete_site_option('remove-terms_taxo');
delete_option('remove-terms_cpt');
delete_site_option('remove-terms_cpt');
delete_option('rename-terms_taxo');
delete_site_option('rename-terms_taxo');
delete_option('rename-terms_cpt');
delete_site_option('rename-terms_cpt');
delete_option('merge-terms_taxo');
delete_site_option('merge-terms_taxo');
delete_option('merge-terms_cpt');
delete_site_option('merge-terms_cpt');
delete_option('delete-unuused-terms_taxo');
delete_site_option('delete-unuused-terms_taxo');
delete_option('delete-unuused-terms_cpt');
delete_site_option('delete-unuused-terms_cpt');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('taxopress_3_23_0_upgrade_completed');
delete_site_option('taxopress_3_23_0_upgrade_completed');
delete_option('taxopress_3_28_0_upgrade_completed');
delete_site_option('taxopress_3_28_0_upgrade_completed');
delete_option('taxopress_activate');
delete_site_option('taxopress_activate');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'taxopress_term_order_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('taxopress_suggestterms');
delete_site_option('taxopress_suggestterms');
delete_option('taxopress_ai_post_terms_tab_label');
delete_site_option('taxopress_ai_post_terms_tab_label');
delete_option('taxopress_ai_existing_terms_tab_label');
delete_site_option('taxopress_ai_existing_terms_tab_label');
delete_option('taxopress_ai_suggest_local_terms_tab_label');
delete_site_option('taxopress_ai_suggest_local_terms_tab_label');
delete_option('taxopress_ai_create_terms_tab_label');
delete_site_option('taxopress_ai_create_terms_tab_label');
delete_option('taxopress_posttagss');
delete_site_option('taxopress_posttagss');
delete_option('taxopress_default_posttagss');
delete_site_option('taxopress_default_posttagss');
delete_option('taxopress_posttags_ids_increament');
delete_site_option('taxopress_posttags_ids_increament');
delete_option('taxopress_relatedposts');
delete_site_option('taxopress_relatedposts');
delete_option('taxopress_default_relatedposts');
delete_site_option('taxopress_default_relatedposts');
delete_option('taxopress_relatedpost_ids_increament');
delete_site_option('taxopress_relatedpost_ids_increament');
delete_option('taxopress_tagclouds');
delete_site_option('taxopress_tagclouds');
delete_option('taxopress_default_tagclouds');
delete_site_option('taxopress_default_tagclouds');
delete_option('taxopress_tagcloud_ids_increament');
delete_site_option('taxopress_tagcloud_ids_increament');
delete_option('taxopress_taxonomies');
delete_site_option('taxopress_taxonomies');
delete_option('taxopress_media_tag_deleted');
delete_site_option('taxopress_media_tag_deleted');
delete_option('taxopress_deactivated_taxonomies');
delete_site_option('taxopress_deactivated_taxonomies');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'default_term_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('migrate_taxopress_ai_legacy_api');
delete_site_option('migrate_taxopress_ai_legacy_api');
delete_option('taxopress_reviews_installed_on');
delete_site_option('taxopress_reviews_installed_on');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_taxopress_hidden_terms_%', '_site_transient_taxopress_hidden_terms_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('taxopress_flush_rewrite_rules');
delete_site_transient('taxopress_flush_rewrite_rules');

// Clear Cron Jobs
wp_clear_scheduled_hook('taxopress_cron_autoterms_weekly');
wp_clear_scheduled_hook('taxopress_update_hidden_terms_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_taxopress_autotermed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_taxopress_autotermed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_taxopress_autotermed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_taxopress_autotermed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_taxopress_log_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_taxopress_log_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_taxopress_log_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_taxopress_log_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_taxopress_log_taxonomy' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_taxopress_log_taxonomy' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_taxopress_log_taxonomy' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_taxopress_log_taxonomy' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_taxopress_log_action' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_taxopress_log_action' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_taxopress_log_action' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_taxopress_log_action' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_taxopress_log_terms' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_taxopress_log_terms' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_taxopress_log_terms' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_taxopress_log_terms' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_taxopress_log_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_taxopress_log_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_taxopress_log_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_taxopress_log_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_taxopress_log_status_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_taxopress_log_status_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_taxopress_log_status_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_taxopress_log_status_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_exclude_autotags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_exclude_autotags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_exclude_autotags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_exclude_autotags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_exclude_autolinks' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_exclude_autolinks' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_exclude_autolinks' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_exclude_autolinks' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'taxopress_custom_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'taxopress_custom_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'taxopress_custom_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'taxopress_custom_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_taxopress_log_post_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_taxopress_log_post_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_taxopress_log_post_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_taxopress_log_post_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_taxopress_log_component' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_taxopress_log_component' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_taxopress_log_component' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_taxopress_log_component' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_taxopress_log_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_taxopress_log_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_taxopress_log_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_taxopress_log_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_taxopress_log_option_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_taxopress_log_option_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_taxopress_log_option_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_taxopress_log_option_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_taxopress_term_synonyms' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_taxopress_term_synonyms' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_taxopress_term_synonyms' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_taxopress_term_synonyms' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_taxopress_reviews_dismissed_triggers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_taxopress_reviews_dismissed_triggers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_taxopress_reviews_dismissed_triggers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_taxopress_reviews_dismissed_triggers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_taxopress_reviews_last_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_taxopress_reviews_last_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_taxopress_reviews_last_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_taxopress_reviews_last_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_taxopress_reviews_already_did' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_taxopress_reviews_already_did' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_taxopress_reviews_already_did' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_taxopress_reviews_already_did' ) );

