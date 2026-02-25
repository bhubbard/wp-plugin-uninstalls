#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bluteem_aba_settings'
wp option delete 'bluteem_aba_posts_count'
wp option delete 'bluteem_aba_errors'
wp option delete 'bluteem_aba_recent_keywords'

# Clear Cron Jobs
wp cron event delete 'bluteem_aba_generate_post'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bluteem_aba_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bluteem_aba_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bluteem_aba_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bluteem_aba_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bluteem_aba_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bluteem_aba_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bluteem_aba_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bluteem_aba_timestamp'"
