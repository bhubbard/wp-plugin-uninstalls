<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sage82in_enable_posts');
delete_site_option('sage82in_enable_posts');
delete_option('sage82in_enable_pages');
delete_site_option('sage82in_enable_pages');
delete_option('sage82in_enable_comments');
delete_site_option('sage82in_enable_comments');
delete_option('sage82in_link_targets');
delete_site_option('sage82in_link_targets');
delete_option('sage82in_ignore_words');
delete_site_option('sage82in_ignore_words');
delete_option('sage82in_max_links');
delete_site_option('sage82in_max_links');
delete_option('sage82in_max_single');
delete_site_option('sage82in_max_single');
delete_option('sage82in_custom_keywords');
delete_site_option('sage82in_custom_keywords');
delete_option('sage82in_nofollow');
delete_site_option('sage82in_nofollow');
delete_option('sage82in_target_blank');
delete_site_option('sage82in_target_blank');
delete_option('sage82in_prevent_self_link');
delete_site_option('sage82in_prevent_self_link');
delete_option('sage82in_custom_post_types');
delete_site_option('sage82in_custom_post_types');
delete_option('sage82in_blacklist_posts');
delete_site_option('sage82in_blacklist_posts');
delete_option('sage82in_blacklist_categories');
delete_site_option('sage82in_blacklist_categories');
delete_option('sage82in_synonyms');
delete_site_option('sage82in_synonyms');
delete_option('sage82in_link_preference');
delete_site_option('sage82in_link_preference');
delete_option('sage82in_date_range_days');
delete_site_option('sage82in_date_range_days');

// Delete Transients
delete_transient('sage82in_keywords_cache');
delete_site_transient('sage82in_keywords_cache');

