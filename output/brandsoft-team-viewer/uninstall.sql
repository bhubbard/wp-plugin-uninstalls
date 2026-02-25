-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('contact_info', 'social_info', 'memberlist', 'custom_css', 'bsteam-designation');
DELETE FROM wp_usermeta WHERE meta_key IN ('contact_info', 'social_info', 'memberlist', 'custom_css', 'bsteam-designation');
DELETE FROM wp_termmeta WHERE meta_key IN ('contact_info', 'social_info', 'memberlist', 'custom_css', 'bsteam-designation');
DELETE FROM wp_commentmeta WHERE meta_key IN ('contact_info', 'social_info', 'memberlist', 'custom_css', 'bsteam-designation');

