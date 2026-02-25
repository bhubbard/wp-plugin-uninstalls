-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spottr_token', 'spottr_public_keys', 'spottr_userid', 'spottr_pkt', 'spottr_content_imported');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('spottr_product', 'spottr_image', 'spottr_term_id', 'spottr_term_image_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('spottr_product', 'spottr_image', 'spottr_term_id', 'spottr_term_image_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('spottr_product', 'spottr_image', 'spottr_term_id', 'spottr_term_image_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('spottr_product', 'spottr_image', 'spottr_term_id', 'spottr_term_image_url');

