#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wbam_setup_complete'
wp option delete 'wbam_setup_dismissed'
wp option delete 'wbam_settings'
wp option delete 'wbam_email_submissions'
wp option delete 'wbam_link_prefix'
wp option delete 'wbam_currency'

# Delete Transients
wp transient delete '_wbam_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'wbam_daily_cleanup'
wp cron event delete 'wbam_hourly_stats'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wbam_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wbam_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wbam_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wbam_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wbam_placements'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wbam_placements'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wbam_placements'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wbam_placements'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wbam_ad_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wbam_ad_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wbam_ad_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wbam_ad_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wbam_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wbam_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wbam_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wbam_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wbam_session_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wbam_session_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wbam_session_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wbam_session_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wbam_display_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wbam_display_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wbam_display_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wbam_display_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wbam_schedule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wbam_schedule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wbam_schedule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wbam_schedule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wbam_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wbam_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wbam_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wbam_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wbam_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wbam_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wbam_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wbam_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wbam_visitor_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wbam_visitor_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wbam_visitor_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wbam_visitor_conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wbam_geo_targeting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wbam_geo_targeting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wbam_geo_targeting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wbam_geo_targeting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wbam_sample_ad'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wbam_sample_ad'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wbam_sample_ad'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wbam_sample_ad'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wbam_code_sandbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wbam_code_sandbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wbam_code_sandbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wbam_code_sandbox'"
