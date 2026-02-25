-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stb_options', 'simple_tournament_brackets_options', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('stb_competitors', 'stb_status', 'stb_match_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('stb_competitors', 'stb_status', 'stb_match_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('stb_competitors', 'stb_status', 'stb_match_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('stb_competitors', 'stb_status', 'stb_match_data');

