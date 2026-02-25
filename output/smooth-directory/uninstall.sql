-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('business_setting_header_bg');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('meta_business_contact', 'meta_business_email', 'meta_business_description', 'meta_business_website', 'meta_business_phone', 'meta_business_address', 'meta_business_address2', 'meta_business_city', 'meta_business_state', 'meta_business_zip');
DELETE FROM wp_usermeta WHERE meta_key IN ('meta_business_contact', 'meta_business_email', 'meta_business_description', 'meta_business_website', 'meta_business_phone', 'meta_business_address', 'meta_business_address2', 'meta_business_city', 'meta_business_state', 'meta_business_zip');
DELETE FROM wp_termmeta WHERE meta_key IN ('meta_business_contact', 'meta_business_email', 'meta_business_description', 'meta_business_website', 'meta_business_phone', 'meta_business_address', 'meta_business_address2', 'meta_business_city', 'meta_business_state', 'meta_business_zip');
DELETE FROM wp_commentmeta WHERE meta_key IN ('meta_business_contact', 'meta_business_email', 'meta_business_description', 'meta_business_website', 'meta_business_phone', 'meta_business_address', 'meta_business_address2', 'meta_business_city', 'meta_business_state', 'meta_business_zip');

