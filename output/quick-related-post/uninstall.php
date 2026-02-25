<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('quick_related_post_max_number');
delete_site_option('quick_related_post_max_number');
delete_option('quick_related_post_item_per_slide');
delete_site_option('quick_related_post_item_per_slide');
delete_option('quick_related_post_headline');
delete_site_option('quick_related_post_headline');
delete_option('quick_related_post_title_font_size');
delete_site_option('quick_related_post_title_font_size');
delete_option('quick_related_post_title_font_color');
delete_site_option('quick_related_post_title_font_color');
delete_option('quick_related_post_title');
delete_site_option('quick_related_post_title');
delete_option('quick_related_post_thumbnail');
delete_site_option('quick_related_post_thumbnail');
delete_option('quick_related_post_author');
delete_site_option('quick_related_post_author');
delete_option('quick_related_post_date');
delete_site_option('quick_related_post_date');
delete_option('quick_related_post_excerpt');
delete_site_option('quick_related_post_excerpt');
delete_option('quick_related_post_readmore');
delete_site_option('quick_related_post_readmore');
delete_option('quick_related_post_style_default');
delete_site_option('quick_related_post_style_default');
delete_option('quick_related_post_custom_style');
delete_site_option('quick_related_post_custom_style');
delete_option('quick_related_post_version');
delete_site_option('quick_related_post_version');

