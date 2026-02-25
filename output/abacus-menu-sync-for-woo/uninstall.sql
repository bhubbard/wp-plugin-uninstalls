-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('layoutStyle', 'storeId', 'apiKey', 'abacusInitialized', 'abacus-menu-admin-notice-success-update', 'abacus-menu-admin-notice-error-update');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_price');

