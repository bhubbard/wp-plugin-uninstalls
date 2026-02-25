#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'moodmoderator_api_key'
wp option delete 'moodmoderator_strictness'
wp option delete 'moodmoderator_custom_tones'
wp option delete 'moodmoderator_enable_logging'
wp option delete 'moodmoderator_cache_duration'
wp option delete 'moodmoderator_predefined_tones'
wp option delete 'moodmoderator_version'

# Delete Transients
wp transient delete 'moodmoderator_api_calls_count'
wp transient delete 'moodmoderator_no_api_key_warning'
wp transient delete 'moodmoderator_dashboard_widget'

# Clear Cron Jobs
wp cron event delete 'moodmoderator_analyze_comment'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'moodmoderator_tone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'moodmoderator_tone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'moodmoderator_tone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'moodmoderator_tone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'moodmoderator_content_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'moodmoderator_content_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'moodmoderator_content_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'moodmoderator_content_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'moodmoderator_analyzed_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'moodmoderator_analyzed_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'moodmoderator_analyzed_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'moodmoderator_analyzed_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'moodmoderator_confidence'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'moodmoderator_confidence'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'moodmoderator_confidence'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'moodmoderator_confidence'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'moodmoderator_ai_reasoning'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'moodmoderator_ai_reasoning'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'moodmoderator_ai_reasoning'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'moodmoderator_ai_reasoning'"
