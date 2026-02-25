-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('it_recht_kanzlei_trustwidget_identifier', 'it_recht_kanzlei_widget_identifier');

