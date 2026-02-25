-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('PinyinPermalink_separator', 'PinyinPermalink_fullword', 'PinyinPermalink_length');

