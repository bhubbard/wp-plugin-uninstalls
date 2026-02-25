-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kotivon_cta_whatsapp', 'kotivon_cta_phone', 'kotivon_cta_whatsapp_color', 'kotivon_cta_phone_color', 'kotivon_cta_toggle_color');

