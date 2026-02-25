-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpaic_display_location', 'wpaic_gemini_api_key', 'wpaic_brand_color', 'wpaic_welcome_message', 'wpaic_chat_title', 'wpaic_bot_avatar_url', 'wpaic_copy_trigger_enabled', 'wpaic_exit_intent_enabled', 'wpaic_time_trigger_enabled', 'wpaic_add_to_cart_enabled', 'wpaic_copy_trigger_text', 'wpaic_footer_text', 'wpaic_contact_info');

