#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ocma_fsb_position'
wp option delete 'ocma_fsb_display_method'
wp option delete 'ocma_fsb_threshold'
wp option delete 'ocma_fsb_bg_color'
wp option delete 'ocma_fsb_bg_color_progress'
wp option delete 'ocma_fsb_bg_color_completed'
wp option delete 'ocma_fsb_msg_initial'
wp option delete 'ocma_fsb_msg_progress'
wp option delete 'ocma_fsb_msg_completed'
wp option delete 'ocma_fsb_enabled'
wp option delete 'ocma_fsb_text_color'

