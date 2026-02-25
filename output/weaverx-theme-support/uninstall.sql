-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('weaverx_plus_backup', 'weaverx5_settings', 'wvrx_toggle_shortcode_prefix', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tgmpa_dismissed_notice', 'wvrx_ts_pp_title', 'wvrx_ts_pp_text', '_elementor_edit_mode', 'panels_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('tgmpa_dismissed_notice', 'wvrx_ts_pp_title', 'wvrx_ts_pp_text', '_elementor_edit_mode', 'panels_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('tgmpa_dismissed_notice', 'wvrx_ts_pp_title', 'wvrx_ts_pp_text', '_elementor_edit_mode', 'panels_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tgmpa_dismissed_notice', 'wvrx_ts_pp_title', 'wvrx_ts_pp_text', '_elementor_edit_mode', 'panels_data');

