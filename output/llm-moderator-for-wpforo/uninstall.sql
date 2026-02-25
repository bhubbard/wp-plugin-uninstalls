-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('colaias_wpforo_ai_flag_types', 'colaias_wpforo_ai_can_log_info', 'colaias_wpforo_ai_openrouter_api_key', 'colaias_wpforo_ai_openrouter_model', 'colaias_wpforo_ai_send_metrics_to_openrouter', 'colaias_wpforo_ai_custom_xtitle_for_openrouter', 'colaias_wpforo_ai_moderation_prompt', 'colaias_wpforo_ai_mute_duration', 'colaias_wpforo_ai_openrouter_timeout', 'colaias_wpforo_ai_use_context', 'colaias_wpforo_ai_max_succeeding', 'colaias_wpforo_ai_max_preceding', 'colaias_wpforo_ai_cached_site_url');
DELETE FROM wp_options WHERE option_name LIKE 'colaias_action_notice_%';
DELETE FROM wp_options WHERE option_name LIKE 'colaias_wpforo_ai_user_notices_%';

