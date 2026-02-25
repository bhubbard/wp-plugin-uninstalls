-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('venjuewidget_business_vat', 'venjuewidget_accent_color', 'venjuewidget_language', 'venjuewidget_gtm_id', 'venjuewidget_custom_code');

