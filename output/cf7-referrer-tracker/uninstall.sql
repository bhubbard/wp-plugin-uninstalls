-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7rt_selected_http_headers', 'include_http_header_in_admin_email');

