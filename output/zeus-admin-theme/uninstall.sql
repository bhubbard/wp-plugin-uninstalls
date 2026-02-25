-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hide_menu_bh_plugin', 'hide_sub_menu_bh_plugin', 'hide_top_menu_bh_plugin', 'rewrite_rules', 'hotkey', 'results_limit', 'hide_wp_toolbar_status', '_welcome_screen_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('jarvis_theme', 'jarvis_hotkey');
DELETE FROM wp_usermeta WHERE meta_key IN ('jarvis_theme', 'jarvis_hotkey');
DELETE FROM wp_termmeta WHERE meta_key IN ('jarvis_theme', 'jarvis_hotkey');
DELETE FROM wp_commentmeta WHERE meta_key IN ('jarvis_theme', 'jarvis_hotkey');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_amr_menu_positions';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_amr_menu_positions';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_amr_menu_positions';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_amr_menu_positions';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_aame_menu_positions';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_aame_menu_positions';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_aame_menu_positions';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_aame_menu_positions';

