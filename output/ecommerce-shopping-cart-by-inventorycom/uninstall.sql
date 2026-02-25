-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ec_login_settings', 'deferred_admin_notices', 'ec_main_settings', 'ec_pages_settings', 'ec_design_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('erplyID', 'images', 'files', 'priceWithVat', 'price', 'parameters', 'replacementProducts', 'relatedProducts');
DELETE FROM wp_usermeta WHERE meta_key IN ('erplyID', 'images', 'files', 'priceWithVat', 'price', 'parameters', 'replacementProducts', 'relatedProducts');
DELETE FROM wp_termmeta WHERE meta_key IN ('erplyID', 'images', 'files', 'priceWithVat', 'price', 'parameters', 'replacementProducts', 'relatedProducts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('erplyID', 'images', 'files', 'priceWithVat', 'price', 'parameters', 'replacementProducts', 'relatedProducts');

