-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pcf7p_enabled', 'pcf7p_form_id', 'pcf7p_delay_seconds', 'pcf7p_width', 'pcf7p_trigger_type', 'pcf7p_device_rule', 'pcf7p_page_rule_type', 'pcf7p_overlay_opacity', 'pcf7p_animation', 'pcf7p_btn_color', 'pcf7p_popup_content', 'pcf7p_selected_pages');

