-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pr_enabled', 'pr_fixed', 'pr_interval', 'pr_enforce_punctuality', 'pr_also_alter_last_modified', 'pr_exclude_if_no_featured_image', 'pr_filter_by_category', 'pr_clean_uninstall', 'pr_included_post_types', 'pr_included_categories', 'pr_latest_rotation_time');

