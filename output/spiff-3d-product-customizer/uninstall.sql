-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spiff_infrastructure', 'spiff_plugin_was_activated', 'spiff_api_key', 'spiff_api_secret', 'spiff_application_key', 'spiff_show_customer_selections_in_cart', 'spiff_show_preview_images_in_cart', 'spiff_non_bulk_text', 'spiff_font_size', 'spiff_font_weight', 'spiff_text_color', 'spiff_background_color', 'spiff_width', 'spiff_height', 'spiff_customer_portal_button_text', 'spiff_customer_portal_button_font_size', 'spiff_customer_portal_button_font_weight', 'spiff_customer_portal_button_text_color', 'spiff_customer_portal_button_background_color', 'spiff_customer_portal_button_width', 'spiff_customer_portal_button_height');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone', 'first_name', 'last_name');

