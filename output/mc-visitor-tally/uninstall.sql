-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mc6397vt_installed', 'mc6397vt_showmonths', 'mc6397vt_showyear', 'mc6397vt_table_type', 'mc6397vt_table_color', 'mc6397vt_table_resp', 'mc6397vt_deleteTable', 'widget_mc6397vt_widget');

