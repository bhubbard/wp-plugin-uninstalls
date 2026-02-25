#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'n8n_chat_widget_url'
wp option delete 'n8n_chat_widget_enabled'
wp option delete 'n8n_chat_widget_position'
wp option delete 'n8n_chat_widget_title'
wp option delete 'n8n_chat_widget_color'
wp option delete 'n8n_chat_widget_icon'
wp option delete 'n8n_chat_widget_icon_type'
wp option delete 'n8n_chat_widget_svg_icon'
wp option delete 'n8n_chat_widget_zoom'

