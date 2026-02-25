-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('prottoge_text_color', 'prottoge_hover_color', 'prottoge_border_color', 'prottoge_enabled_post_types');

