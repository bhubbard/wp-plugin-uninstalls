-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('buddybot_welcome_modal_dismissed', 'buddybot_columns_per_page', 'buddybot_conversations_per_page', 'buddybot_vectorstore_data', 'buddybot_db_version');
DELETE FROM wp_options WHERE option_name LIKE '%-remote-file-id';

