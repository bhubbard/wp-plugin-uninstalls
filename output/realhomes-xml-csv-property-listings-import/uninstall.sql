-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_notice_ignore';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('REAL_HOMES_property_images', 'inspiry_floor_plans', 'REAL_HOMES_attachments', 'inspiry_is_published');
DELETE FROM wp_usermeta WHERE meta_key IN ('REAL_HOMES_property_images', 'inspiry_floor_plans', 'REAL_HOMES_attachments', 'inspiry_is_published');
DELETE FROM wp_termmeta WHERE meta_key IN ('REAL_HOMES_property_images', 'inspiry_floor_plans', 'REAL_HOMES_attachments', 'inspiry_is_published');
DELETE FROM wp_commentmeta WHERE meta_key IN ('REAL_HOMES_property_images', 'inspiry_floor_plans', 'REAL_HOMES_attachments', 'inspiry_is_published');

