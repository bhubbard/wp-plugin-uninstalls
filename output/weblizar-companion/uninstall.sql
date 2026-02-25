-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('theme_mods_enigma', 'enigma_options', 'weblizar_options', 'creative_general_options', 'explora_options', 'guardian_options', 'health_options', 'scoreline_options', 'chronicle_theme_options', 'green-lantern_options_gl', 'free_theme_data', 'enigma_options_pro', 'nineteen_theme_front_page');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');

