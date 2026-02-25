-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fdtr_enable_feature', 'fdtr_tag_names', 'fdtr_exclude_posts', 'fdtr_exclude_pages');

