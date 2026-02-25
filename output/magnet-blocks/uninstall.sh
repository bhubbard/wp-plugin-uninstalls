#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpmb_blocks_display_settings'
wp option delete 'wpmb_block_title'
wp option delete 'wpmb_block_content'

