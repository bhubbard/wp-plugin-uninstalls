-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpec_wpml_glue');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpshpcrt_usr_profile_language', '_wpscml_copy_downloads');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpshpcrt_usr_profile_language', '_wpscml_copy_downloads');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpshpcrt_usr_profile_language', '_wpscml_copy_downloads');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpshpcrt_usr_profile_language', '_wpscml_copy_downloads');

