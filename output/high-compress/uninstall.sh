#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'HIGHCOMPRESS_VERSION_TAG'
wp option delete 'HIGHCOMPRESS_RECENT_CUTOFF'
wp option delete 'HIGHCOMPRESS_TOATAL_Size_BEFORE'
wp option delete 'HIGHCOMPRESS_TOATAL_IMAGES'
wp option delete 'HIGHCOMPRESS_TOATAL_Size_AFTER'
wp option delete 'HIGHCOMPRESS_PERCENT'
wp option delete 'HIGHCOMPRESS_TOTAL_SIZE'
wp option delete 'HIGHCOMPRESS_AUTOCOMPRESS_RULE'
wp option delete 'HIGHCOMPRESS_AUTOBACKUP_RULE'
wp option delete 'HIGHCOMPRESS_MY'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'HIGHCOMPRESS_OFFSET_OFF_%'"
wp option delete 'HIGHCOMPRESS_FILE_TYPE'
wp option delete 'HIGHCOMPRESS_PLAN_NAME'
wp option delete 'HIGHCOMPRESS_COUNT'
wp option delete 'HIGHCOMPRESS_MODE'
wp option delete 'HIGHCOMPRESS_PLAN'
wp option delete 'HIGHCOMPRESS_API_KEY'
wp option delete 'HIGHCOMPRESS_TOTAL_COUNT'
wp option delete 'HIGHCOMPRESS_USER_ID'

