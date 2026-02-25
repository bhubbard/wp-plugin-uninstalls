-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rapidtextai_api_key', 'rapidtextai_whats_new_dismissed', 'rapidtextai_campaigns_migrated', 'rapidtextai_auto_blogging', 'rapidtextai_auto_blogging_campaigns', 'rapidtextai_usage_check');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data', '_rapidtextai_topic', '_rapidtextai_settings', '_rapidtextai_campaign_id', '_rapidtextai_raw_content', '_rapidtextai_status', '_rapidtextai_started', '_rapidtextai_completed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data', '_rapidtextai_topic', '_rapidtextai_settings', '_rapidtextai_campaign_id', '_rapidtextai_raw_content', '_rapidtextai_status', '_rapidtextai_started', '_rapidtextai_completed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data', '_rapidtextai_topic', '_rapidtextai_settings', '_rapidtextai_campaign_id', '_rapidtextai_raw_content', '_rapidtextai_status', '_rapidtextai_started', '_rapidtextai_completed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data', '_rapidtextai_topic', '_rapidtextai_settings', '_rapidtextai_campaign_id', '_rapidtextai_raw_content', '_rapidtextai_status', '_rapidtextai_started', '_rapidtextai_completed');

