#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'MUCAFSB_amount'
wp option delete 'MUCAFSB_initial_message'
wp option delete 'MUCAFSB_progress_message1'
wp option delete 'MUCAFSB_progress_message2'
wp option delete 'MUCAFSB_goal_achieved_message'
wp option delete 'MUCAFSB_bg_color'
wp option delete 'MUCAFSB_text_color'
wp option delete 'MUCAFSB_special_text_color'
wp option delete 'MUCAFSB_bar_padding'
wp option delete 'MUCAFSB_font_size'
wp option delete 'MUCAFSB_bar_activation'

