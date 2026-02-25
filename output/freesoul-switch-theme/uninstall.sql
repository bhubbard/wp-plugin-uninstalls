-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('EOS_SW_VERSION', 'eos_themes', 'freesoul-sw-updating-mu', 'freesoul-sw-notice-fail', 'freesoul-sw-notice-succ');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_theme_name_replace_key', '_eos_replace_theme_always_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('_theme_name_replace_key', '_eos_replace_theme_always_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('_theme_name_replace_key', '_eos_replace_theme_always_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_theme_name_replace_key', '_eos_replace_theme_always_key');

