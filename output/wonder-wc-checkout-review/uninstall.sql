-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wwcr_enable_checkout_review_page', 'wwcr_public_css_whereshow', 'wwcr_content_wrapper_selector', 'wwcr_terminology_review_order_text', 'wwcr_terminology_place_order_text', 'wwcr_billing_section_title', 'wwcr_billing_section_format', 'wwcr_shipping_section_title', 'wwcr_shipping_section_format', 'wwcr_order_section_title', 'wwcr_order_section_format');

