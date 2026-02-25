-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('authpro_username', 'authpro_usage', 'authpro_protect_categories', 'authpro_protect_tags');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_authpro_protect');
DELETE FROM wp_usermeta WHERE meta_key IN ('_authpro_protect');
DELETE FROM wp_termmeta WHERE meta_key IN ('_authpro_protect');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_authpro_protect');

