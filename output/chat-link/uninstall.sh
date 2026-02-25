#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chat_link_enabled'
wp option delete 'chat_link_number'
wp option delete 'chat_link_side'
wp option delete 'chat_link_size'
wp option delete 'chat_link_margin_side'
wp option delete 'chat_link_margin_bottom'
wp option delete 'chat_link_custom_message'
wp option delete 'chat_link_custom_image'

