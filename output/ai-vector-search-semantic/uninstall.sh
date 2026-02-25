#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aivesese_search_results_limit'
wp option delete 'aivesese_cli_upgrade_notice_dismissed'
wp option delete 'aivesese_plugin_version'
wp option delete 'aivesese_connection_mode'
wp option delete 'aivesese_postgres_connection_string'
wp option delete 'aivesese_lite_stopwords'
wp option delete 'aivesese_lite_synonyms'
wp option delete 'aivesese_lite_index_limit'
wp option delete 'aivesese_lite_avg_search_time'
wp option delete 'aivesese_license_key'
wp option delete 'aivesese_api_activated'
wp option delete 'aivesese_store'
wp option delete 'aivesese_url'
wp option delete 'aivesese_key'
wp option delete 'aivesese_enable_search'
wp option delete 'aivesese_semantic_toggle'
wp option delete 'aivesese_openai'
wp option delete 'aivesese_enable_woodmart_integration'
wp option delete 'aivesese_sql_v2_dismissed'
wp option delete 'aivesese_schema_installed'
wp option delete 'aivesese_schema_install_method'
wp option delete 'aivesese_analytics_db_version'
wp option delete 'aivesese_schema_version'
wp option delete 'aivesese_master_key_notice_dismissed'
wp option delete 'aivesese_show_welcome_notice'
wp option delete 'aivesese_analytics_discovered'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'aivesese_opportunity_shown_%'"
wp option delete 'aivesese_auto_sync'
wp option delete 'aivesese_enable_pdp_similar'
wp option delete 'aivesese_enable_cart_below'

# Clear Cron Jobs
wp cron event delete 'aivs_cleanup_analytics'
wp cron event delete 'aivesese_rebuild_lite_index'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aivesese_help_open'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aivesese_help_open'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aivesese_help_open'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aivesese_help_open'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cogs_total_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cogs_total_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cogs_total_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cogs_total_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cost_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cost_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cost_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cost_price'"
