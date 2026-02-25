-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rewrite_rules');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('jarvis_theme', 'jarvis_hotkey');
DELETE FROM wp_usermeta WHERE meta_key IN ('jarvis_theme', 'jarvis_hotkey');
DELETE FROM wp_termmeta WHERE meta_key IN ('jarvis_theme', 'jarvis_hotkey');
DELETE FROM wp_commentmeta WHERE meta_key IN ('jarvis_theme', 'jarvis_hotkey');

