-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp30skybar_data', '_wp30skybar_override_bar', 'wp30skybar_override_bar');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp30skybar_data', '_wp30skybar_override_bar', 'wp30skybar_override_bar');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp30skybar_data', '_wp30skybar_override_bar', 'wp30skybar_override_bar');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp30skybar_data', '_wp30skybar_override_bar', 'wp30skybar_override_bar');

