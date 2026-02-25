-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ss_podcasting_player_meta_data_enabled', 'active_sitewide_plugins', 'ssp_version');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('transcript_file', '_elementor_edit_mode');
DELETE FROM wp_usermeta WHERE meta_key IN ('transcript_file', '_elementor_edit_mode');
DELETE FROM wp_termmeta WHERE meta_key IN ('transcript_file', '_elementor_edit_mode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('transcript_file', '_elementor_edit_mode');

