-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aad-settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('aad_before_on', 'aad_after_on', 'aad_custom_rules');
DELETE FROM wp_usermeta WHERE meta_key IN ('aad_before_on', 'aad_after_on', 'aad_custom_rules');
DELETE FROM wp_termmeta WHERE meta_key IN ('aad_before_on', 'aad_after_on', 'aad_custom_rules');
DELETE FROM wp_commentmeta WHERE meta_key IN ('aad_before_on', 'aad_after_on', 'aad_custom_rules');

