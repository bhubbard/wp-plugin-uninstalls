<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('url_autolinker_data');
delete_site_option('url_autolinker_data');
delete_option('ual_keep_data_on_uninstall');
delete_site_option('ual_keep_data_on_uninstall');
delete_option('url_autolinker_limit');
delete_site_option('url_autolinker_limit');
delete_option('url_autolinker_total');
delete_site_option('url_autolinker_total');
delete_option('url_autolinker_tag_controls');
delete_site_option('url_autolinker_tag_controls');
delete_option('url_autolinker_skip_paragraphs');
delete_site_option('url_autolinker_skip_paragraphs');
delete_option('ual_hide_adminbar_indicator');
delete_site_option('ual_hide_adminbar_indicator');
delete_option('ual_batch_size');
delete_site_option('ual_batch_size');
delete_option('ual_min_capability');
delete_site_option('ual_min_capability');
delete_option('ual_index_mode');
delete_site_option('ual_index_mode');
delete_option('ual_post_type_whitelist');
delete_site_option('ual_post_type_whitelist');
delete_option('ual_post_blacklist');
delete_site_option('ual_post_blacklist');
delete_option('ual_blacklist_child_pages');
delete_site_option('ual_blacklist_child_pages');
delete_option('ual_link_as_often_as_possible');
delete_site_option('ual_link_as_often_as_possible');
delete_option('ual_case_sensitive');
delete_site_option('ual_case_sensitive');
delete_option('ual_max_links_per_paragraph');
delete_site_option('ual_max_links_per_paragraph');
delete_option('ual_skip_already_linked_targets');
delete_site_option('ual_skip_already_linked_targets');
delete_option('ual_excluded_tags');
delete_site_option('ual_excluded_tags');
delete_option('ual_link_template');
delete_site_option('ual_link_template');
delete_option('ual_global_nofollow');
delete_site_option('ual_global_nofollow');
delete_option('ual_cache_enabled');
delete_site_option('ual_cache_enabled');
delete_option('ual_api_key');
delete_site_option('ual_api_key');
delete_option('ual_pro_enabled');
delete_site_option('ual_pro_enabled');
delete_option('ual_tax_filter_enabled');
delete_site_option('ual_tax_filter_enabled');
delete_option('ual_tax_filter_mode');
delete_site_option('ual_tax_filter_mode');
delete_option('ual_tax_filter_terms');
delete_site_option('ual_tax_filter_terms');

// Delete Transients
delete_transient('url_autolinker_rules');
delete_site_transient('url_autolinker_rules');
delete_transient('ual_link_stats_cache_v1');
delete_site_transient('ual_link_stats_cache_v1');
delete_transient('ual_anchor_stats_cache_v1');
delete_site_transient('ual_anchor_stats_cache_v1');
delete_transient('ual_cache_cleared');
delete_site_transient('ual_cache_cleared');
delete_transient('ual_import_notice');
delete_site_transient('ual_import_notice');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ual_disable_autolinker' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ual_disable_autolinker' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ual_disable_autolinker' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ual_disable_autolinker' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ual_aliases' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ual_aliases' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ual_aliases' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ual_aliases' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ual_newtab' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ual_newtab' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ual_newtab' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ual_newtab' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ual_nofollow' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ual_nofollow' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ual_nofollow' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ual_nofollow' ) );

