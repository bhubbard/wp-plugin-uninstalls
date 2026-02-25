-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('MktoPrefill-active', 'MktoPrefill-form-page', 'MktoPrefill-iframe-support', 'MktoPrefill-non-mkto-enabled', 'MktoPrefill-api-key', 'MktoPrefill-selected-fields', 'MktoPrefill-customer-type');

