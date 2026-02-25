-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lspw_options', 'lsp_options', 'lspw-admin-notice');

