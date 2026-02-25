#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'magicblog_features'
wp option delete 'magicblog_settings'
wp option delete 'magicblog_query_monitor'
wp option delete 'magicblog_widgets'
wp option delete 'magicblog_version'
wp option delete 'magicblog_resolved_conflicts'
wp option delete 'magicblog_compatibility_issues'
wp option delete 'magicblog_theme_compatibility_checked'
wp option delete 'magicblog_theme_test_results'

# Clear Cron Jobs
wp cron event delete 'magicblog_update_stats'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'magicblog_subheader_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'magicblog_subheader_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'magicblog_subheader_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'magicblog_subheader_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'magicblog_elementor_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'magicblog_elementor_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'magicblog_elementor_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'magicblog_elementor_notice_dismissed'"
