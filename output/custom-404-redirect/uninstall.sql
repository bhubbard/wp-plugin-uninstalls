-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('custom_404_redirect_status', 'custom_404_redirect_type', 'custom_404_redirect_page_id');

