-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('b0xTPortal_admin_country', 'b0xT_google_api_key', 'b0xTPortal_username', 'b0xTPortal_password', 'b0xTPortal_google_api_key', 'b0xTPortal_mode', 'b0xTPortal_zipcode_label', 'b0xTPortal_page_title');

