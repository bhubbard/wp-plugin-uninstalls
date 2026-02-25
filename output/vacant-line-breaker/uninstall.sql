-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vlbr_filter_target', 'vlbr_br_format', 'vlbr_insert_paragraph_tags', 'vlbr_shortcodes');

