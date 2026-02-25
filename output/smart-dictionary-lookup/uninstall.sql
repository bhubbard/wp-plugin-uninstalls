-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smartdic_api_url', 'smartdic_enable_popup', 'smartdic_popup_theme', 'smartdic_popup_position');

