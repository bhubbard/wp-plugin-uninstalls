-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('voidcoders_restrictor_response', 'woocommerce_myaccount_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('VoidCodersProductCatVisibility');
DELETE FROM wp_usermeta WHERE meta_key IN ('VoidCodersProductCatVisibility');
DELETE FROM wp_termmeta WHERE meta_key IN ('VoidCodersProductCatVisibility');
DELETE FROM wp_commentmeta WHERE meta_key IN ('VoidCodersProductCatVisibility');

