-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rt_reading_time_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_metadata', '_wp_attachment_image_alt', '_expiration-date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_metadata', '_wp_attachment_image_alt', '_expiration-date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_metadata', '_wp_attachment_image_alt', '_expiration-date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_metadata', '_wp_attachment_image_alt', '_expiration-date');

