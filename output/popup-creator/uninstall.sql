-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ALPHACONNECT_POPUP_VERSION', 'myprefix_image_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_acpc_popup');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_acpc_popup');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_acpc_popup');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_acpc_popup');

