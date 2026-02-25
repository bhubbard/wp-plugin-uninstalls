-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pekiwctt_api_url', 'pekiwctt_status_url', 'pekiwctt_employee_token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pekiwctt_dismiss_connect_notice', '_tripletex_invoice_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('pekiwctt_dismiss_connect_notice', '_tripletex_invoice_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('pekiwctt_dismiss_connect_notice', '_tripletex_invoice_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pekiwctt_dismiss_connect_notice', '_tripletex_invoice_id');

