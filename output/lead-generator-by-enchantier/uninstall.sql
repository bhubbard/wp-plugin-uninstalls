-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ENCHANTIER_SETTINGS', 'ENCHANTIER_KEY', 'ENCHANTIER_PASSWORD', 'ENCHANTIER_NOHEADER');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('EnChantier_ignore_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('EnChantier_ignore_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('EnChantier_ignore_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('EnChantier_ignore_notice');

