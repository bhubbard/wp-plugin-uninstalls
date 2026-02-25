-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shashin_permalinks-on', 'shashin_permalinks-title_on', 'shashin_permalinks-sociable_on', 'shashin_permalinks-key_album', 'shashin_permalinks-key_page', 'rewrite_rules');

