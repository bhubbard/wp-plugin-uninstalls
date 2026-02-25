-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Zartis_Unique_ID', 'Zartis_Page_ID', 'Zartis_Notice', 'Zartis_Group', 'Zartis_Width');

