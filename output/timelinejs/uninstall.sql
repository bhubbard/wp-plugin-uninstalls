-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('display_only_these_post_categories_as_a_timeline', 'display_post_categories_as_inline_timeline', 'display_post_categories_as_a_timeline', 'only_display_other_timeline_hotswap');

