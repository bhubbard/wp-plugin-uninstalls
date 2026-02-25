-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qrgen4all_sitetoken', 'qrgen4all_ctoken', 'qrgen4all_tsv');

