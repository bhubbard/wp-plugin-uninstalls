-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trs_sticky_notice_text', 'trs_sticky_notice_theme', 'trs_sticky_notice_position', 'trs_sticky_notice_font_size');

