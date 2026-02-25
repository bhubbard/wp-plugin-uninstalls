-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('HPWAddrLookup_GeneralSettings', 'HPWAddrLookup_Forms', 'HPWAddrLookup_Woo');

