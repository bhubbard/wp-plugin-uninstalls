-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tuta_store_url', 'tuta_store_id', 'tuta_onboarding_steps_completed', 'tuta_onboarding_step', 'tuta_onboarding_status', 'tuta_onboarding_never_show', 'tuta_selected_plan', 'tuta_current_plan_name', 'tuta_last_products_sync', 'tuta_selected_pages', 'tuta_last_pages_sync', 'tuta_web_chat_enabled', 'tuta_web_chat_position', 'tuta_web_chat_primary_color', 'tuta_web_chat_welcome_message', 'tuta_web_chat_size', 'tuta_whatsapp_status', 'tuta_current_plan', 'tuta_store_status', 'tuta_api_key', 'tuta_last_products_sync_time', 'tuta_last_pages_sync_time', 'tuta_api_url', 'tuta_edge_function_domain', 'active_sitewide_plugins', 'tuta_access_token', 'tuta_subscription_success', 'tuta_subscription_error', 'tuta_plan_check');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tuta_pending_cart_key', '_tuta_session_id', '_tuta_generated_time', '_tuta_visitor', '_tuta_visit_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tuta_pending_cart_key', '_tuta_session_id', '_tuta_generated_time', '_tuta_visitor', '_tuta_visit_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tuta_pending_cart_key', '_tuta_session_id', '_tuta_generated_time', '_tuta_visitor', '_tuta_visit_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tuta_pending_cart_key', '_tuta_session_id', '_tuta_generated_time', '_tuta_visitor', '_tuta_visit_time');

