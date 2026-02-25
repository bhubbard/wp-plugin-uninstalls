#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ai_search_bar_db_version'
wp option delete 'OASB_flash_notices'
wp option delete 'chatgpt-key'

