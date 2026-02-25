-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aiar_light_api_key', 'aiar_light_disable_ai', 'aiar_light_business_description', 'aiar_light_selected_form', 'aiar_light_conversation_logs');

