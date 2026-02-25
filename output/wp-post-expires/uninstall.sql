-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xn_wppe_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('xn-wppe-expiration', 'xn-wppe-expiration-action', 'xn-wppe-expiration-prefix');
DELETE FROM wp_usermeta WHERE meta_key IN ('xn-wppe-expiration', 'xn-wppe-expiration-action', 'xn-wppe-expiration-prefix');
DELETE FROM wp_termmeta WHERE meta_key IN ('xn-wppe-expiration', 'xn-wppe-expiration-action', 'xn-wppe-expiration-prefix');
DELETE FROM wp_commentmeta WHERE meta_key IN ('xn-wppe-expiration', 'xn-wppe-expiration-action', 'xn-wppe-expiration-prefix');

