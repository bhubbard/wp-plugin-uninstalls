#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hp_message_allow_attachment'
wp option delete 'hp_message_refresh_interval'
wp option delete 'hp_message_enable_storage'
wp option delete 'hp_message_blocked_keywords'
wp option delete 'hp_message_attachment_types'
wp option delete 'hp_message_expiration_period'
wp option delete 'hp_message_storage_period'
wp option delete 'hp_message_allow_monitoring'
wp option delete 'hp_message_allow_deletion'
wp option delete 'hp_user_enable_display'

