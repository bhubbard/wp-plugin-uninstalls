#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xapp_chat_widget_key'
wp option delete 'xapp_form_widget_key'
wp option delete 'xapp_search_widget_key'

