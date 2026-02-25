-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('asaaisaa_cache_bust', 'asaaisaa_system_prompt', 'asaaisaa_title', 'asaaisaa_subtitle', 'asaaisaa_primary_color', 'asaaisaa_avatar_image_url', 'asaaisaa_avatar_icon', 'asaaisaa_position', 'asaaisaa_show_credit', 'asaaisaa_api_key', 'asaaisaa_proactive_delay', 'asaaisaa_history_limit', 'asaaisaa_auto_insert', 'asaaisaa_display_types');

