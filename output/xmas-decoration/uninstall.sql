-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xmas_decoration_bar_type', 'xmas_decoration_body_date_range', 'xmas_decoration_body_padding_top');

