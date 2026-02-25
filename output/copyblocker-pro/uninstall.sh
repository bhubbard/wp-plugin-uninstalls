#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'copyblocker_pro_disable_selection'
wp option delete 'copyblocker_pro_block_copy'
wp option delete 'copyblocker_pro_block_select_all'
wp option delete 'copyblocker_pro_block_dev_tools'
wp option delete 'copyblocker_pro_block_context_menu'
wp option delete 'copyblocker_pro_block_screen_capture'
wp option delete 'copyblocker_pro_block_print'
wp option delete 'copyblocker_pro_block_image_download'

