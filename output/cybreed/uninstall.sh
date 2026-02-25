#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cybreed_access_token'
wp option delete 'cybreed_user_id'
wp option delete 'cybreed_selected_organisation_id'
wp option delete 'cybreed_selected_chat_id'
wp option delete 'cybreed_display_options'
wp option delete 'cybreed_single_page_id'

