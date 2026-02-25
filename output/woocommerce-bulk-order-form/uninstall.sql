-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_bof_general', 'active_sitewide_plugins', 'wcbulkorderform');

