-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wh_loader_brand_name', 'wh_loader_bg_color', 'wh_loader_text_color', 'wh_loader_spinner_active');

