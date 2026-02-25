#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'doobert_api_token_value'
wp option delete 'doobert_validation_data'
wp option delete '_doobert_token_value'
wp option delete 'doobert-chatbot-custom-settings'
wp option delete 'doobert-chatbot-petclove-settings'
wp option delete 'doobert-chatbot-adopt-settings'
wp option delete 'doobert_is_training_data_loaded'
wp option delete '_doobert_excluded_posts_from_api'
wp option delete 'doobert_audit_email'
wp option delete '_doobert_token_time_stamp'
wp option delete '_doobert_chatbot_design_settings'

# Delete Transients
wp transient delete 'token'

# Clear Cron Jobs
wp cron event delete 'custom_scrape_doobert_data'
wp cron event delete 'doobertbottest_daily_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_doobert_filename_pdf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_doobert_filename_pdf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_doobert_filename_pdf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_doobert_filename_pdf'"
