-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('customcss', 'profile-link');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('destination_destination', 'second_featured_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('destination_destination', 'second_featured_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('destination_destination', 'second_featured_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('destination_destination', 'second_featured_image');

