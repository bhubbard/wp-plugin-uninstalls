-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('multisite-new-user-form');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('primary_blog', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('primary_blog', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('primary_blog', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('primary_blog', 'first_name', 'last_name');

