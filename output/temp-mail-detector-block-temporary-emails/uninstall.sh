#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tmdetect_api_key'
wp option delete 'tmdetect_custom_blocklist'
wp option delete 'tmdetect_block_plus_emails'
wp option delete 'tmdetect_protect_comments'

