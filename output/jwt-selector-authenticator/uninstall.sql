-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jwtseau_jwt_auth_hass_type', 'jwtseau_jwt_auth_hass_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_jwt_protect', '_jwt_KeyPass');
DELETE FROM wp_usermeta WHERE meta_key IN ('_jwt_protect', '_jwt_KeyPass');
DELETE FROM wp_termmeta WHERE meta_key IN ('_jwt_protect', '_jwt_KeyPass');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_jwt_protect', '_jwt_KeyPass');

