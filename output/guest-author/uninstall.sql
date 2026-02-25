-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bs-guest-author-integration');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('BS_guest_author_name', 'BS_guest_author_url', 'BS_guest_author_description', 'BS_guest_author_image_id', 'BS_author_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('BS_guest_author_name', 'BS_guest_author_url', 'BS_guest_author_description', 'BS_guest_author_image_id', 'BS_author_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('BS_guest_author_name', 'BS_guest_author_url', 'BS_guest_author_description', 'BS_guest_author_image_id', 'BS_author_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('BS_guest_author_name', 'BS_guest_author_url', 'BS_guest_author_description', 'BS_guest_author_image_id', 'BS_author_type');

