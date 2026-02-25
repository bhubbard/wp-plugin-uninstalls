-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('maintainchoicePluginMood', 'maintainchoicePlugin_messageType', 'maintainchoicePlugin_message_page', 'maintainchoicePlugin_TextToDisplay');

