-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpza_gui__plugin_settings_currency_decimal_places', 'wpza_gui__plugin_settings_currency', 'wpza_gui__plugin_settings_currency_after', 'wpza_gui__plugin_settings_tax', 'wpza_gui__plugin_settings_company_address', 'wpza_gui__plugin_settings_footer_information');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('invoice_status', 'wpza_gui__metabox_items_group', 'users', 'invoice_user', 'invoice_reference', 'invoice_tax');
DELETE FROM wp_usermeta WHERE meta_key IN ('invoice_status', 'wpza_gui__metabox_items_group', 'users', 'invoice_user', 'invoice_reference', 'invoice_tax');
DELETE FROM wp_termmeta WHERE meta_key IN ('invoice_status', 'wpza_gui__metabox_items_group', 'users', 'invoice_user', 'invoice_reference', 'invoice_tax');
DELETE FROM wp_commentmeta WHERE meta_key IN ('invoice_status', 'wpza_gui__metabox_items_group', 'users', 'invoice_user', 'invoice_reference', 'invoice_tax');

