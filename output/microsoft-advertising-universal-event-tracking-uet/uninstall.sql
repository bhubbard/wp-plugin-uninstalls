-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('MsUet_Activated_Plugin', 'UetTagSettings');

