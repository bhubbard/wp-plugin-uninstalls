-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpinv_created_initial_quote_pages', 'wpinv_quotes_activation_redirect', 'wpinv_quotes_flushed_rewrite_rules');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpinv_quote_valid_until', '_wpinv_quote_decline_reason');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpinv_quote_valid_until', '_wpinv_quote_decline_reason');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpinv_quote_valid_until', '_wpinv_quote_decline_reason');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpinv_quote_valid_until', '_wpinv_quote_decline_reason');

