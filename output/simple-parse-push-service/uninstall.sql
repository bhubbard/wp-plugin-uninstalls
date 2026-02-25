-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simpar_enableSound', 'simpar_doNotIncludeChannel', 'simpar_appName', 'simpar_appID', 'simpar_restApi', 'simpar_autoSendTitle', 'simpar_includePostID', 'simpar_discardScheduledPosts', 'simpar_saveLastMessage', 'simpar_pushChannels', 'simpar_metaBoxPriority', 'simpar_metabox_pt', 'simpar_scheduled_message_options', 'simpar_hide_warning', 'simpar_lastMessage', 'simpar_sendToChannels');

