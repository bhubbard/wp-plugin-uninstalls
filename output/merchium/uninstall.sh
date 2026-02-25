#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'merchium_widget_code'
wp option delete 'merchium_store_page_id'
wp option delete 'merchium_installation_date'
wp option delete 'merchium_show_vote_message'
wp option delete 'merchium_widget_is_connected'

