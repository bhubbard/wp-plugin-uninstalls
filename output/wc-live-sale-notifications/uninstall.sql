-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xslsn-live-sale-notification', 'xswclsn-live-sale-notification');

