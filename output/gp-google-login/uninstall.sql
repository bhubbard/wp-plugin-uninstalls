-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Gp_google_login_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('googleplus_access_token', 'googleplus_profile_img', 'gp_display_name', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('googleplus_access_token', 'googleplus_profile_img', 'gp_display_name', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('googleplus_access_token', 'googleplus_profile_img', 'gp_display_name', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('googleplus_access_token', 'googleplus_profile_img', 'gp_display_name', 'first_name', 'last_name');

