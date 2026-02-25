-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qurio_api_key', 'qurio_api_status', 'qurio_appearance_overlay_color', 'qurio_appearance_overlay_opacity', 'qurio_appearance_popup_delay', 'qurio_appearance_inline_position', 'qurio_overview_campaign_data', 'settings_errors');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('qurio_campaign_id', 'qurio_connect_campaign_style');
DELETE FROM wp_usermeta WHERE meta_key IN ('qurio_campaign_id', 'qurio_connect_campaign_style');
DELETE FROM wp_termmeta WHERE meta_key IN ('qurio_campaign_id', 'qurio_connect_campaign_style');
DELETE FROM wp_commentmeta WHERE meta_key IN ('qurio_campaign_id', 'qurio_connect_campaign_style');

