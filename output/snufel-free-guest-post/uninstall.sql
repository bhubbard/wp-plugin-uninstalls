-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('snufel_free_guest_post_settings_option_name');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('guest_author', 'guest_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('guest_author', 'guest_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('guest_author', 'guest_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('guest_author', 'guest_email');

