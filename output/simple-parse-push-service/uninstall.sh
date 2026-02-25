#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simpar_enableSound'
wp option delete 'simpar_doNotIncludeChannel'
wp option delete 'simpar_appName'
wp option delete 'simpar_appID'
wp option delete 'simpar_restApi'
wp option delete 'simpar_autoSendTitle'
wp option delete 'simpar_includePostID'
wp option delete 'simpar_discardScheduledPosts'
wp option delete 'simpar_saveLastMessage'
wp option delete 'simpar_pushChannels'
wp option delete 'simpar_metaBoxPriority'
wp option delete 'simpar_metabox_pt'
wp option delete 'simpar_scheduled_message_options'
wp option delete 'simpar_hide_warning'
wp option delete 'simpar_lastMessage'
wp option delete 'simpar_sendToChannels'

