<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wprac_img_url');
delete_site_option('wprac_img_url');
delete_option('wprac_allow_comments');
delete_site_option('wprac_allow_comments');
delete_option('wprac_url-to-id');
delete_site_option('wprac_url-to-id');
delete_option('onemorethubf');
delete_site_option('onemorethubf');
delete_option('wprac_unset_id');
delete_site_option('wprac_unset_id');
delete_option('wprac_unset_title');
delete_site_option('wprac_unset_title');
delete_option('wprac_unset_content');
delete_site_option('wprac_unset_content');
delete_option('wprac_unset_date_gmt');
delete_site_option('wprac_unset_date_gmt');
delete_option('wprac_unset_guid');
delete_site_option('wprac_unset_guid');
delete_option('wprac_unset_date');
delete_site_option('wprac_unset_date');
delete_option('wprac_unset_modified');
delete_site_option('wprac_unset_modified');
delete_option('wprac_unset_modified_gmt');
delete_site_option('wprac_unset_modified_gmt');
delete_option('wprac_unset_slug');
delete_site_option('wprac_unset_slug');
delete_option('wprac_unset_status');
delete_site_option('wprac_unset_status');
delete_option('wprac_unset_type');
delete_site_option('wprac_unset_type');
delete_option('wprac_unset_link');
delete_site_option('wprac_unset_link');
delete_option('wprac_unset_excerpt');
delete_site_option('wprac_unset_excerpt');
delete_option('wprac_unset_author');
delete_site_option('wprac_unset_author');
delete_option('wprac_unset_featured_media');
delete_site_option('wprac_unset_featured_media');
delete_option('wprac_unset_comment_status');
delete_site_option('wprac_unset_comment_status');
delete_option('wprac_unset_ping_status');
delete_site_option('wprac_unset_ping_status');
delete_option('wprac_unset_sticky');
delete_site_option('wprac_unset_sticky');
delete_option('wprac_unset_template');
delete_site_option('wprac_unset_template');
delete_option('wprac_unset_format');
delete_site_option('wprac_unset_format');
delete_option('wprac_unset_meta');
delete_site_option('wprac_unset_meta');
delete_option('wprac_unset_categories');
delete_site_option('wprac_unset_categories');
delete_option('wprac_unset_tags');
delete_site_option('wprac_unset_tags');

