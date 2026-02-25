#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'clickrank_ai_db_version'
wp option delete 'clickrank_ai_max_log_entries'
wp option delete 'clickrank_ai_api_key'
wp option delete '_clickrank_ai_homepage_revert_data'
wp option delete '_clickrank_ai_homepage_schema'
wp option delete '_clickrank_ai_homepage_canonical'
wp option delete '_clickrank_ai_homepage_title'
wp option delete '_clickrank_ai_homepage_description'
wp option delete 'clickrank_ai_api_status'
wp option delete 'clickrank_ai_enable_title_opt'
wp option delete 'clickrank_ai_enable_meta_opt'
wp option delete 'clickrank_ai_enable_canonical_opt'
wp option delete 'clickrank_ai_enable_schema_opt'
wp option delete 'clickrank_ai_enable_img_alt_opt'
wp option delete 'clickrank_ai_enable_link_title_opt'
wp option delete 'clickrank_ai_activation_time'
wp option delete 'clickrank_ai_table_creation_error'
wp option delete 'clickrank_ai_install_date'
wp option delete 'clickrank_ai_plugin_version'
wp option delete 'clickrank_ai_remove_data_on_deactivate'
wp option delete 'clickrank_ai_last_deactivation'
wp option delete 'clickrank_ai_migration_results'
wp option delete 'clickrank_ai_use_post_meta'
wp option delete 'wpseo_titles'
wp option delete 'rank-math-options-titles'
wp option delete 'rank-math-options-general'
wp option delete 'rank_math_homepage_title'
wp option delete 'rank_math_homepage_description'

# Delete Transients
wp transient delete 'clickrank_ai_last_health_check'
wp transient delete 'clickrank_ai_activation_redirect'
wp transient delete 'clickrank_ai_last_successful_connection'

# Clear Cron Jobs
wp cron event delete 'clickrank_ai_cleanup_logs'
wp cron event delete 'clickrank_ai_health_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'clickrank_ai_activation_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'clickrank_ai_activation_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'clickrank_ai_activation_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'clickrank_ai_activation_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clickrank_ai_revert_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clickrank_ai_revert_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clickrank_ai_revert_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clickrank_ai_revert_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clickrank_ai_canonical_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clickrank_ai_canonical_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clickrank_ai_canonical_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clickrank_ai_canonical_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clickrank_ai_page_schema'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clickrank_ai_page_schema'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clickrank_ai_page_schema'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clickrank_ai_page_schema'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clickrank_ai_link_titles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clickrank_ai_link_titles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clickrank_ai_link_titles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clickrank_ai_link_titles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clickrank_ai_seo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clickrank_ai_seo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clickrank_ai_seo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clickrank_ai_seo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clickrank_ai_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clickrank_ai_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clickrank_ai_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clickrank_ai_meta_description'"
