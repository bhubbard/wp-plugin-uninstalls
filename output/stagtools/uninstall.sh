#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stag_options'
wp option delete 'stagtools_settings_general'
wp option delete 'stagtools_settings_social'
wp option delete 'twitterwptoken'
wp option delete 'stag_custom_sidebars'
wp option delete 'stag_twitter_widget_tweets'
wp option delete 'stag_twitter_widget_last_cache'

# Delete Transients
wp transient delete 'codestag_themes_list'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stag_team_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stag_team_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stag_team_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stag_team_info'"
