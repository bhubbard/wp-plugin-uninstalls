-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wprs_pinyin_slug_version', 'wprs_pinyin_slug');

