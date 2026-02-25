#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'smarttags_shared_key_%'"
wp option delete 'smarttags_cloud_job_id'
wp option delete 'smarttags_cloud_registered_at'
wp option delete 'smarttags_cloud_last_sync'
wp option delete 'smarttags_cloud_last_cleanup'
wp option delete 'smarttags_dlm_activation_token'
wp option delete 'smarttags_dlm_license_key'
wp option delete 'smarttags_dlm_consumer_key'
wp option delete 'smarttags_dlm_consumer_secret'
wp option delete 'smarttags_dlm_activated_domain'
wp option delete 'smarttags_dlm_domain_mismatch'
wp option delete 'smarttags_last_deactivation_cancelled_count'
wp option delete 'smarttags_auto_runs_count'
wp option delete 'smarttags_install_hash'
wp option delete 'smarttags_shared_key_google'
wp option delete 'smarttags_shared_key_groq'
wp option delete 'smarttags_settings_v1'

# Delete Transients
wp transient delete 'smarttags_cloud_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_smarttags_temp_ai_enabled_%' OR option_name LIKE '_site_transient_smarttags_temp_ai_enabled_%'"
wp transient delete 'smarttags_dlm_license_status'
wp transient delete 'smarttags_google_rate_limit_hit'
wp transient delete 'smarttags_remote_prompts'
wp transient delete 'smarttags_lock'
wp transient delete 'smarttags_tag_popularity'
wp transient delete 'smarttags_count_with_suggestions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smarttags_suggestions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smarttags_suggestions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smarttags_suggestions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smarttags_suggestions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smarttags_optout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smarttags_optout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smarttags_optout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smarttags_optout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smarttags_last_auto_applied'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smarttags_last_auto_applied'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smarttags_last_auto_applied'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smarttags_last_auto_applied'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smarttags_tag_dates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smarttags_tag_dates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smarttags_tag_dates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smarttags_tag_dates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smarttags_ai_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smarttags_ai_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smarttags_ai_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smarttags_ai_tags'"
