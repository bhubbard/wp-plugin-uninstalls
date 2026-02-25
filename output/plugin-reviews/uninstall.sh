#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugin_reviews_num_chars'
wp option delete 'plugin_reviews_read_more_text'
wp option delete 'plugin_reviews_hide_nav_dots'
wp option delete 'plugin_reviews_text_color'
wp option delete 'plugin_reviews_background_color'
wp option delete 'plugin_reviews_font_size'
wp option delete 'plugin_reviews_border_style'
wp option delete 'plugin_reviews_border_color'
wp option delete 'plugin_reviews_avatar_width'
wp option delete 'plugin_reviews_avatar_height'
wp option delete 'plugin_reviews_padding'
wp option delete 'plugin_reviews_margin'
wp option delete 'wr_reviews_flush_transient'
wp option delete 'plugin_reviews_activation_time'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'plugin_reviews_dismissed_starfish_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'plugin_reviews_dismissed_starfish_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'plugin_reviews_dismissed_starfish_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'plugin_reviews_dismissed_starfish_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'plugin_reviews_dismissed_review_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'plugin_reviews_dismissed_review_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'plugin_reviews_dismissed_review_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'plugin_reviews_dismissed_review_notice'"
