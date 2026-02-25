-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trad_ioy_gen_settings', 'trad_ioy_version', 'trad_ioy_local_css', 'trad_ioy_avail_bible_versions');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('trad_ioy_activate_shortcodes');
DELETE FROM wp_usermeta WHERE meta_key IN ('trad_ioy_activate_shortcodes');
DELETE FROM wp_termmeta WHERE meta_key IN ('trad_ioy_activate_shortcodes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('trad_ioy_activate_shortcodes');

