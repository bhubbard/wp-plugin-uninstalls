-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spbp_enabled', 'spbp_popup_delay', 'spbp_popup_bg_color', 'spbp_popup_position', 'spbp_impressions', 'spbp_clicks');

