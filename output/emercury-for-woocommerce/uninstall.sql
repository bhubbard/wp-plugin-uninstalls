-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'wc_settings_tab_emercury_api_key', 'wc_settings_tab_emercury_email', 'wc_settings_tab_emercury_section_audiences', 'wc_marketing_settings_tab_emercury_checkbox', 'wc_marketing_settings_tab_emercury_section_checkbox_title', 'wc_marketing_settings_tab_emercury_section_audiences', 'wc_settings_tab_emercury_force_campaign_enable', 'wc_settings_tab_emercury_force_campaign_automation_id', 'wc_settings_tab_emercury_force_campaign_list_id', 'wc_marketing_settings_updated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_date_completed', '_customer_ip_address');
DELETE FROM wp_usermeta WHERE meta_key IN ('_date_completed', '_customer_ip_address');
DELETE FROM wp_termmeta WHERE meta_key IN ('_date_completed', '_customer_ip_address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_date_completed', '_customer_ip_address');

