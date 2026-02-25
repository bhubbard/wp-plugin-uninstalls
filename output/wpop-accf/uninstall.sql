-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('accf7_fields', 'accf7_enable', 'accf7_gdpr', 'accf7_credentials');
DELETE FROM wp_usermeta WHERE meta_key IN ('accf7_fields', 'accf7_enable', 'accf7_gdpr', 'accf7_credentials');
DELETE FROM wp_termmeta WHERE meta_key IN ('accf7_fields', 'accf7_enable', 'accf7_gdpr', 'accf7_credentials');
DELETE FROM wp_commentmeta WHERE meta_key IN ('accf7_fields', 'accf7_enable', 'accf7_gdpr', 'accf7_credentials');

