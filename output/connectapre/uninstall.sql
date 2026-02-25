-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('connectapre_business_name', 'connectapre_business_type', 'connectapre_enable_whatsapp', 'connectapre_agents_data', 'connectapre_wizard_completed', 'connectapre_offline_behavior', 'connectapre_primary_number', 'connectapre_offline_message', 'connectapre_display_delay', 'connectapre_scroll_delay', 'connectapre_sap_button_position_data', 'connectapre_sap_button_style_data', 'connectapre_fallback_primary_number', 'connectapre_default_greeting', 'connectapre_cta_text', 'connectapre_hide_when_offline');

