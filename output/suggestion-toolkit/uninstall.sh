#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_login_info'"
wp option delete 'suggestion_toolkit_cache'
wp option delete 'suggestion_toolkit_cache_expiration'
wp option delete 'suggestion_toolkit_rewrite_tag'
wp option delete 'suggestion_toolkit_enabled_types'
wp option delete 'suggestion_toolkit_append_random'
wp option delete 'suggestion_toolkit_thumb_width'
wp option delete 'suggestion_toolkit_thumb_height'
wp option delete 'suggestion_toolkit_thumb_cover'
wp option delete 'suggestion_toolkit_title_font_size'
wp option delete 'suggestion_toolkit_title_words'
wp option delete 'suggestion_toolkit_target_blank'
wp option delete 'suggestion_toolkit_rel'
wp option delete 'suggestion_toolkit_rewrite_enable'
wp option delete 'suggestion_toolkit_append_category'
wp option delete 'suggestion_toolkit_num_suggestions'
wp option delete 'suggestion_toolkit_more'
wp option delete 'suggestion_toolkit_layout_style'

# Clear Cron Jobs
wp cron event delete 'suggestion_toolkit_daily_hook'

