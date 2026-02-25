-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yzahkin_post_grid_categories', 'yzahkin_post_grid_pagination_pn_text', 'yzahkin_post_grid_exlude_or_not');

