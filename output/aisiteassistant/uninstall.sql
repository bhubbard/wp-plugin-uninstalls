-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aisiteassistant_chat_enabled', 'aisiteassistant_last_db_time', 'aisiteassistant_update_frequency', 'aisiteassistant_last_url', 'aisiteassistant_task_id', 'aisiteassistant_task_status', 'aisiteassistant_api_key', 'aisiteassistant_secret_key', 'aisiteassistant_next_scheduled_time', 'aisiteassistant_chat_placeholder', 'aisiteassistant_chat_send_label', 'aisiteassistant_status', 'aisiteassistant_last_db');

