#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dila_max_suggestions'
wp option delete 'dila_auto_insert_links'
wp option delete 'dila_enable_classic_editor'
wp option delete 'dila_indexing_trigger'
wp option delete 'dila_excluded_post_types'
wp option delete 'dila_enable_inline_highlights'
wp option delete 'dila_min_internal_links'
wp option delete 'dila_db_version'

# Delete Transients
wp transient delete 'dila_orphan_count'
wp transient delete 'dila_broken_links_cache'
wp transient delete 'dila_total_indexed_posts'
wp transient delete 'dila_broken_links_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dila_suggestions_%' OR option_name LIKE '_site_transient_dila_suggestions_%'"
wp transient delete 'dila_idf_scores'
wp transient delete 'dila_index_progress'

# Clear Cron Jobs
wp cron event delete 'dila_index_posts'
wp cron event delete 'dila_daily_maintenance'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dila_inbound_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dila_inbound_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dila_inbound_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dila_inbound_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dila_last_indexed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dila_last_indexed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dila_last_indexed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dila_last_indexed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dila_keyword_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dila_keyword_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dila_keyword_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dila_keyword_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dila_outbound_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dila_outbound_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dila_outbound_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dila_outbound_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dila_onboarding_completed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dila_onboarding_completed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dila_onboarding_completed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dila_onboarding_completed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dila_onboarding_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dila_onboarding_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dila_onboarding_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dila_onboarding_dismissed'"
