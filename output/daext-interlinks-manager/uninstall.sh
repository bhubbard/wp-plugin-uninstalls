#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_interlinks_options_post_types'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_interlinks_optimization_post_types'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_internal_links_data_last_update'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_internal_links_data_update_frequency'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_juice_data_last_update'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_juice_data_update_frequency'"
wp option delete 'daextinma_options_version'
wp option delete 'daextinma_database_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_default_seo_power'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_optimization_num_of_characters'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_optimization_delta'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_penality_per_position_percentage'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_set_max_execution_time'"
wp option delete 'daextinma_max_execution_time_value'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_set_memory_limit'"
wp option delete 'daextinma_memory_limit_value'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dashboard_post_types'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_limit_posts_analysis'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_juice_post_types'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_remove_link_to_anchor'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_remove_url_parameters'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_daextinma_seo_power'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_daextinma_seo_power'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_daextinma_seo_power'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_daextinma_seo_power'"
