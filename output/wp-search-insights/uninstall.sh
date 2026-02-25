#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsi_select_dashboard_capability'
wp option delete 'wpsi_select_term_deletion_period'
wp option delete 'wpsi-current-version'
wp option delete 'wpsi_version_two_installation_time'
wp option delete 'wpsi_checked_ajax_plugins'
wp option delete 'wpsi_track_ajax_searches'
wp option delete 'wpsi_activation_time'
wp option delete 'wpsi_exclude_admin'
wp option delete 'wpsi_min_term_length'
wp option delete 'wpsi_max_term_length'
wp option delete 'wpsi_custom_search_parameter'
wp option delete 'wpsi_filter_textarea'
wp option delete 'wpsi_cleardatabase'
wp option delete 'wpsi_export_row_count'
wp option delete 'wpsi_export_progress'
wp option delete 'wpsi_file_name'
wp option delete 'wpsi_database_created'
wp option delete 'wpsi_review_notice_shown'
wp option delete 'wpsi_spam_filter_stats'
wp option delete 'wpsi_toolset_configured'
wp option delete 'wpsi_tour_cancelled'
wp option delete 'wpsi_database_postids_upgrade_completed'
wp option delete 'search_insights_db_version'

# Delete Transients
wp transient delete 'wpsi_export_in_progress'
wp transient delete 'wpsi_popular_searches'
wp transient delete 'wpsi_top_searches'
wp transient delete 'wpsi_top_searches_week'
wp transient delete 'wpsi_popular_searches_week'
wp transient delete 'wpsi_plus_ones'
wp transient delete 'wpsi_range_start'
wp transient delete 'wpsi_range_end'
wp transient delete 'wpsi_range_type'
wp transient delete 'wpsi_total_searchcount'

# Clear Cron Jobs
wp cron event delete 'wpsi_every_five_minutes_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsi_popular_filter_preference'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsi_popular_filter_preference'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsi_popular_filter_preference'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsi_popular_filter_preference'"
