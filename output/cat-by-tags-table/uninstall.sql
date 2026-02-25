-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('display_cats_by_tag_direction', 'display_cats_by_tag_table_title', 'display_cats_by_tag_stylesheet', 'display_cats_by_tag_replace_text', 'display_cats_by_tag_empty_cell');

