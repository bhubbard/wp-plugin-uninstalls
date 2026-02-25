-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('raek_api_key', 'raek_plugin_activated', 'raek_cron_last_update', 'raek_activation_redirect', 'raek_plugin_agreement', 'raek_plugin_setup', 'raek_error', 'raek_plugin_review_prompt_dnd', 'raek_plugin_activation_date');

