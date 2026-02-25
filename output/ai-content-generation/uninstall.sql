-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpwand_pro_tala_status', 'wpwand_api_key', 'wpwand_claude_api_key', 'wpwand_deepseek_api_key', 'wpwand_openrouter_api_key', 'wpwand_model', 'wpwand_language', 'toggler_position', 'wpwand_temperature', 'wpwand_frequency', 'wpwand_max_tokens', 'wpwand_presence_penalty', 'wpwand_hide_ai_bar_gutenberg', 'wpwand_data', 'wpwand_custom_data', 'wpwand_pro_activated', 'wpwand_busines_details', 'wpwand_targated_customer', 'wpwand_promo_notice_dismiss', 'wpwand_pgc_total_bulk_generated', 'wpwand_pgc_limit', 'wdelmtr_model', 'wdelmtr_temperature', 'wdelmtr_max_tokens', 'wdelmtr_frequency', 'wdelmtr_presence_penalty', 'wpwand_activation_redirect', 'wpwand_data_transient', 'wpwand_pgc_limit_expiration', 'wpwand_openai_models', 'wpwand_claude_models', 'wpwand_openrouter_model_list');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

