-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('default_post_edit_rows', 'wre_options', 'rewrite_rules', 'wre_version', 'wre_version_upgraded_from', '_wre_activation_redirect', '_wre_redirected');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wre_listing_price', '_wre_enquiry_listing_agent', '_wre_enquiry_name', '_wre_enquiry_email', '_wre_enquiry_phone', '_wre_enquiry_message', '_wre_listing_enquiries', '_wre_marker_image', '_wp_attachment_image_alt', '_wre_listing_agent', '_wre_listing_ids', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wre_listing_price', '_wre_enquiry_listing_agent', '_wre_enquiry_name', '_wre_enquiry_email', '_wre_enquiry_phone', '_wre_enquiry_message', '_wre_listing_enquiries', '_wre_marker_image', '_wp_attachment_image_alt', '_wre_listing_agent', '_wre_listing_ids', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wre_listing_price', '_wre_enquiry_listing_agent', '_wre_enquiry_name', '_wre_enquiry_email', '_wre_enquiry_phone', '_wre_enquiry_message', '_wre_listing_enquiries', '_wre_marker_image', '_wp_attachment_image_alt', '_wre_listing_agent', '_wre_listing_ids', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wre_listing_price', '_wre_enquiry_listing_agent', '_wre_enquiry_name', '_wre_enquiry_email', '_wre_enquiry_phone', '_wre_enquiry_message', '_wre_listing_enquiries', '_wre_marker_image', '_wp_attachment_image_alt', '_wre_listing_agent', '_wre_listing_ids', '_wp_page_template');

