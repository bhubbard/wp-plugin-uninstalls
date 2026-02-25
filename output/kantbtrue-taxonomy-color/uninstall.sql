-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_kbttc_settings_notice', '_kbttc_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_kbttc_term_color');
DELETE FROM wp_usermeta WHERE meta_key IN ('_kbttc_term_color');
DELETE FROM wp_termmeta WHERE meta_key IN ('_kbttc_term_color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_kbttc_term_color');

