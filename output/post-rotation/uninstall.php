<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pr_enabled');
delete_site_option('pr_enabled');
delete_option('pr_fixed');
delete_site_option('pr_fixed');
delete_option('pr_interval');
delete_site_option('pr_interval');
delete_option('pr_enforce_punctuality');
delete_site_option('pr_enforce_punctuality');
delete_option('pr_also_alter_last_modified');
delete_site_option('pr_also_alter_last_modified');
delete_option('pr_exclude_if_no_featured_image');
delete_site_option('pr_exclude_if_no_featured_image');
delete_option('pr_filter_by_category');
delete_site_option('pr_filter_by_category');
delete_option('pr_clean_uninstall');
delete_site_option('pr_clean_uninstall');
delete_option('pr_included_post_types');
delete_site_option('pr_included_post_types');
delete_option('pr_included_categories');
delete_site_option('pr_included_categories');
delete_option('pr_latest_rotation_time');
delete_site_option('pr_latest_rotation_time');

