-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'woocommerce_errandlr_delivery_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('errandlr_reference', 'errandlr_request');
DELETE FROM wp_usermeta WHERE meta_key IN ('errandlr_reference', 'errandlr_request');
DELETE FROM wp_termmeta WHERE meta_key IN ('errandlr_reference', 'errandlr_request');
DELETE FROM wp_commentmeta WHERE meta_key IN ('errandlr_reference', 'errandlr_request');

