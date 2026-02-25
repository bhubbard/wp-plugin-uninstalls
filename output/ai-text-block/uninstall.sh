#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rapidtextai_api_key'
wp option delete 'rapidtextai_whats_new_dismissed'
wp option delete 'rapidtextai_campaigns_migrated'
wp option delete 'rapidtextai_auto_blogging'
wp option delete 'rapidtextai_auto_blogging_campaigns'

# Delete Transients
wp transient delete 'rapidtextai_usage_check'

# Clear Cron Jobs
wp cron event delete 'rapidtextai_generate_title'
wp cron event delete 'rapidtextai_create_post'
wp cron event delete 'rapidtextai_finalize_post'
wp cron event delete 'rapidtextai_auto_blogging_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rapidtextai_topic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rapidtextai_topic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rapidtextai_topic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rapidtextai_topic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rapidtextai_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rapidtextai_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rapidtextai_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rapidtextai_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rapidtextai_campaign_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rapidtextai_campaign_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rapidtextai_campaign_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rapidtextai_campaign_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rapidtextai_raw_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rapidtextai_raw_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rapidtextai_raw_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rapidtextai_raw_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rapidtextai_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rapidtextai_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rapidtextai_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rapidtextai_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rapidtextai_started'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rapidtextai_started'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rapidtextai_started'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rapidtextai_started'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rapidtextai_completed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rapidtextai_completed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rapidtextai_completed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rapidtextai_completed'"
