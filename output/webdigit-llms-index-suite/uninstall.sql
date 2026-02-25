-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wdlis_last_generated', 'wdlis_sig_index', 'wdlis_sig_index_full', 'wdlis_sig_index_json', 'wdlis_sig_images', 'wdlis_sig_images_md', 'wdlis_sig_images_jsonld', 'wdlis_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wdlis_faq_items', '_wdlis_howto_item', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wdlis_faq_items', '_wdlis_howto_item', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wdlis_faq_items', '_wdlis_howto_item', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wdlis_faq_items', '_wdlis_howto_item', '_wp_attachment_image_alt');

