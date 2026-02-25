-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smart_pwa_theme_color', 'smart_pwa_assets_paths', 'smart_pwa_not_available_page', 'smart_pwa_background_color', 'smart_pwa_icon', 'smart_pwa_hash');

