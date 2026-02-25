-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('b1nTPortal_admin_country', 'b1nTPortal_google_api_key', 'b1nTPortal_username', 'b1nTPortal_password', 'b1nTPortal_mode', 'b1nTPortal_zipcode_label', 'b1nTPortal_page_title');

