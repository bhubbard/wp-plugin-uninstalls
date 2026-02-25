-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vkssfl_search_text', 'vkssfl_default_cat', 'vkssfl_excluded_cats', 'vkssfl_clean_excluded_cats', 'vkssfl_cat_text', 'vkssfl_cat_style');

