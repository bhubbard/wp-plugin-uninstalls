-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Refund-Request_email_address', 'refund_requests_enabled', 'refund_request_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_line_total', '_line_tax', '_line_subtotal', '_line_subtotal_tax', 'משקל (kg)', '_qty', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('_line_total', '_line_tax', '_line_subtotal', '_line_subtotal_tax', 'משקל (kg)', '_qty', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('_line_total', '_line_tax', '_line_subtotal', '_line_subtotal_tax', 'משקל (kg)', '_qty', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_line_total', '_line_tax', '_line_subtotal', '_line_subtotal_tax', 'משקל (kg)', '_qty', 'first_name', 'last_name');

