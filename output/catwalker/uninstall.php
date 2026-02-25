<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('catwalker_custom_taxonomy');
delete_site_option('catwalker_custom_taxonomy');
delete_option('catwalker_related');
delete_site_option('catwalker_related');
delete_option('catwalker_default_taxonomy');
delete_site_option('catwalker_default_taxonomy');
delete_option('catwalker_related_include_ids');
delete_site_option('catwalker_related_include_ids');
delete_option('catwalker_related_include_children');
delete_site_option('catwalker_related_include_children');
delete_option('catwalker_related_exclude_ids');
delete_site_option('catwalker_related_exclude_ids');
delete_option('catwalker_related_exclude_children');
delete_site_option('catwalker_related_exclude_children');
delete_option('catwalker_custom_archive_orderby');
delete_site_option('catwalker_custom_archive_orderby');
delete_option('catwalker_custom_archive_order');
delete_site_option('catwalker_custom_archive_order');
delete_option('catwalker_custom_archive_sort');
delete_site_option('catwalker_custom_archive_sort');
delete_option('catwalker_custom_archive_limit');
delete_site_option('catwalker_custom_archive_limit');
delete_option('catwalker_post_attributes');
delete_site_option('catwalker_post_attributes');
delete_option('catwalker_post_attributes_class');
delete_site_option('catwalker_post_attributes_class');

