-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webartclub_option_name', 'webart_check_requests_limit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id', 'check_if_generated_img');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id', 'check_if_generated_img');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id', 'check_if_generated_img');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id', 'check_if_generated_img');

