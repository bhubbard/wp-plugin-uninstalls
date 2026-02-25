-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_fspi_inquiry_form_fields', '_fspi_server_url', '_fspi_license_settings', '_fspi_email_heading_text', '_fspi_email_footer_text', '_fspi_email_from', '_fspi_email_from_address', '_fspi_customer_email_sub', '_fspi_customer_email_body_text', '_fspi_email_admin', '_fspi_admin_email_sub', '_fspi_admin_email_body_text', '_fspi_inquiry_form_open_in_popup', '_fspi_product_currency');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rating', '_fs_short_description', '_fs_product_price', '_fs_product_selling_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('rating', '_fs_short_description', '_fs_product_price', '_fs_product_selling_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('rating', '_fs_short_description', '_fs_product_price', '_fs_product_selling_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rating', '_fs_short_description', '_fs_product_price', '_fs_product_selling_price');

