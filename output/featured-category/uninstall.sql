-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('featcat_num_posts', 'featcat_title', 'featcat_category_id', 'featcat_style');

