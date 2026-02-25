#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cs_sc_openai_api_key'
wp option delete 'cs_sc_primary_color'
wp option delete 'cs_sc_text_color'
wp option delete 'cs_sc_font_family'
wp option delete 'cs_sc_header_bg_color'
wp option delete 'cs_sc_header_text_color'
wp option delete 'cs_sc_body_bg_color'
wp option delete 'cs_sc_body_text_color'
wp option delete 'cs_sc_table_header_bg'
wp option delete 'cs_sc_table_header_text'
wp option delete 'cs_sc_table_row_bg'
wp option delete 'cs_sc_table_row_text'
wp option delete 'cs_sc_display_position'
wp option delete 'cs_sc_enable_ai_quiz'
wp option delete 'cs_sc_delete_on_uninstall'
wp option delete 'cs_sc_activated_time'
wp option delete 'cs_sc_version'
wp option delete 'cs_sc_db_version'

# Delete Transients
wp transient delete 'cs_sc_flush_rewrite_rules'
wp transient delete 'cs_sc_stats_0'

# Clear Cron Jobs
wp cron event delete 'cs_sc_daily_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cs_size_chart_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cs_size_chart_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cs_size_chart_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cs_size_chart_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cs_assignment_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cs_assignment_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cs_assignment_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cs_assignment_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cs_assigned_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cs_assigned_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cs_assigned_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cs_assigned_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cs_assigned_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cs_assigned_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cs_assigned_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cs_assigned_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cs_size_chart_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cs_size_chart_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cs_size_chart_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cs_size_chart_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cs_size_chart_display_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cs_size_chart_display_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cs_size_chart_display_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cs_size_chart_display_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cs_size_chart_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cs_size_chart_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cs_size_chart_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cs_size_chart_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cs_size_chart_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cs_size_chart_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cs_size_chart_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cs_size_chart_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cs_size_chart_quiz'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cs_size_chart_quiz'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cs_size_chart_quiz'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cs_size_chart_quiz'"
