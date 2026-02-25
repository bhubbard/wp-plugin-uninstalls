-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bsoft_admin_notices', 'bsoft_redirect_link', 'bsoft_redirect_name', 'bsoft_image_attachment_id');

