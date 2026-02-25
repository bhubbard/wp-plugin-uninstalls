-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('signature_checkout_position', 'signature_order_page_position');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_signature_attachment_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_signature_attachment_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_signature_attachment_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_signature_attachment_id');

