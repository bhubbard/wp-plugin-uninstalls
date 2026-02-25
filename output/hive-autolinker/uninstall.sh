#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hive_autolinker_license_data'
wp option delete 'hive_autolinker_gsc_connection'
wp option delete 'hive_autolinker_gsc_sites'
wp option delete 'hive_autolinker_gsc_selected_site'
wp option delete 'hive_autolinker_keywords'
wp option delete 'hive_autolinker_gsc_settings'
wp option delete 'hive_autolinker_settings_general'
wp option delete 'hive_autolinker_settings_suggestions'
wp option delete 'hive_autolinker_auto_links'
wp option delete 'hive_autolinker_link_suggestions'
wp option delete 'hive_autolinker_notified_keywords'
wp option delete 'hive_autolinker_gsc_last_import'
wp option delete 'hive_autolinker_gsc_keyword_data'
wp option delete 'hive_autolinker_last_full_link_analysis'
wp option delete 'hive_autolinker_popular_link_suggestions'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%last_full_link_analysis'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%license_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%settings_general'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%settings_suggestions'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%gsc_settings'"

# Delete Transients
wp transient delete 'hive_autolinker_license_verified_message'
wp transient delete 'hive_autolinker_key_phrases_cache'
wp transient delete 'hive_autolinker_cancel_suggestion_generation'
wp transient delete 'hive_autolinker_suggestion_generation_status'
wp transient delete 'hive_autolinker_temp_suggestions'
wp transient delete 'hive_autolinker_link_structure_%'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_hive_autolinker_links_post_%' OR option_name LIKE '_site_transient_hive_autolinker_links_post_%'"
wp transient delete 'hive_autolinker_link_discovery_progress'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%suggestion_generation_status' OR option_name LIKE '_site_transient_%suggestion_generation_status'"
wp transient delete 'hive_autolinker_suggestion_applied'
wp transient delete 'hive_autolinker_suggestion_ignored'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%link_discovery_progress' OR option_name LIKE '_site_transient_%link_discovery_progress'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%license_verified_message' OR option_name LIKE '_site_transient_%license_verified_message'"

# Clear Cron Jobs
wp cron event delete 'hive_autolinker_daily_review_check'
wp cron event delete 'hive_autolinker_weekly_gsc_import'
wp cron event delete 'hive_autolinker_link_discovery_cron'
wp cron event delete 'hive_autolinker_process_link_analysis_batch'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hive_autolinker_links_analyzed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hive_autolinker_links_analyzed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hive_autolinker_links_analyzed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hive_autolinker_links_analyzed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hive_autolinker_discovered_links'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hive_autolinker_discovered_links'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hive_autolinker_discovered_links'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hive_autolinker_discovered_links'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hive_autolinker_previous_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hive_autolinker_previous_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hive_autolinker_previous_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hive_autolinker_previous_content'"
