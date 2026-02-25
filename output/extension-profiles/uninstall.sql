-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_extension_profiles_sessions');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_extension_profiles_plugins', '_extension_profiles_active_profile', '_extension_profiles_token');
DELETE FROM wp_usermeta WHERE meta_key IN ('_extension_profiles_plugins', '_extension_profiles_active_profile', '_extension_profiles_token');
DELETE FROM wp_termmeta WHERE meta_key IN ('_extension_profiles_plugins', '_extension_profiles_active_profile', '_extension_profiles_token');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_extension_profiles_plugins', '_extension_profiles_active_profile', '_extension_profiles_token');

