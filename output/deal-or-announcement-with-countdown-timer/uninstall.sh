#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'deal_or_announcement_with_countdown_timer_timer_color'
wp option delete 'deal_or_announcement_with_countdown_timer_text_color'
wp option delete 'deal_or_announcement_with_countdown_timer_text_align'
wp option delete 'deal_or_announcement_with_countdown_timer_caption'
wp option delete 'deal_or_announcement_with_countdown_timer_timer_align'
wp option delete 'deal_or_announcement_with_countdown_timer_title'

