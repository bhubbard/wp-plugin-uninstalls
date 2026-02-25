<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('beautiful_taxonomy_filters_version');
delete_site_option('beautiful_taxonomy_filters_version');
delete_option('beautiful_taxonomy_filters_post_types');
delete_site_option('beautiful_taxonomy_filters_post_types');
delete_option('polylang');
delete_site_option('polylang');
delete_option('beautiful_taxonomy_filters_taxonomies');
delete_site_option('beautiful_taxonomy_filters_taxonomies');
delete_option('beautiful_taxonomy_filters_automagic');
delete_site_option('beautiful_taxonomy_filters_automagic');
delete_option('beautiful_taxonomy_filters_styles');
delete_site_option('beautiful_taxonomy_filters_styles');
delete_option('beautiful_taxonomy_filters_custom_css');
delete_site_option('beautiful_taxonomy_filters_custom_css');
delete_option('beautiful_taxonomy_filters_disable_select2');
delete_site_option('beautiful_taxonomy_filters_disable_select2');
delete_option('beautiful_taxonomy_filters_clear_all');
delete_site_option('beautiful_taxonomy_filters_clear_all');
delete_option('beautiful_taxonomy_filters_show_count');
delete_site_option('beautiful_taxonomy_filters_show_count');
delete_option('beautiful_taxonomy_filters_show_description');
delete_site_option('beautiful_taxonomy_filters_show_description');
delete_option('beautiful_taxonomy_filters_hide_empty');
delete_site_option('beautiful_taxonomy_filters_hide_empty');
delete_option('beautiful_taxonomy_filters_disable_heading');
delete_site_option('beautiful_taxonomy_filters_disable_heading');
delete_option('beautiful_taxonomy_filters_disable_postcount');
delete_site_option('beautiful_taxonomy_filters_disable_postcount');
delete_option('beautiful_taxonomy_filters_dropdown_behaviour');
delete_site_option('beautiful_taxonomy_filters_dropdown_behaviour');
delete_option('beautiful_taxonomy_filters_settings');
delete_site_option('beautiful_taxonomy_filters_settings');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');

// Delete Transients
delete_transient('btf_notice');
delete_site_transient('btf_notice');

