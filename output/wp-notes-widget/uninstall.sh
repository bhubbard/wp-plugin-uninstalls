#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_notes_widget_twitter_credentials'
wp option delete 'wp_notes_widget_defaults'
wp option delete 'wp_notes_widget_default_shortcode_settings'
wp option delete 'wpnw_version'
wp option delete 'default_wp_notes_created'

# Delete Transients
wp transient delete 'twit_url_short'
wp transient delete 'twit_url_short_s'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'WP_Notes_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'WP_Notes_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'WP_Notes_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'WP_Notes_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'WP_Notes_twitter_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'WP_Notes_twitter_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'WP_Notes_twitter_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'WP_Notes_twitter_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'WP_Notes_tweet_history'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'WP_Notes_tweet_history'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'WP_Notes_tweet_history'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'WP_Notes_tweet_history'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismiss_wp_notes_widget_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismiss_wp_notes_widget_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismiss_wp_notes_widget_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismiss_wp_notes_widget_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
