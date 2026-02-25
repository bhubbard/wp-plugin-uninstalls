-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ARPP_my_option_name');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ARPP_duration_options');
DELETE FROM wp_usermeta WHERE meta_key IN ('ARPP_duration_options');
DELETE FROM wp_termmeta WHERE meta_key IN ('ARPP_duration_options');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ARPP_duration_options');

