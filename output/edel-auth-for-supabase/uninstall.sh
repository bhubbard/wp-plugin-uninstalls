#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eafs_supabase_url'
wp option delete 'eafs_supabase_anon_key'
wp option delete 'eafs_supabase_service_role_key'
wp option delete 'eafs_main_color'
wp option delete 'eafs_auth_method_email'
wp option delete 'eafs_auth_method_google'
wp option delete 'eafs_auth_method_magiclink'
wp option delete 'eafs_enable_welcome_email'
wp option delete 'eafs_welcome_sender_name'
wp option delete 'eafs_welcome_sender_email'
wp option delete 'eafs_welcome_subject'
wp option delete 'eafs_welcome_body'
wp option delete 'eafs_redirect_after_login'
wp option delete 'eafs_redirect_after_logout'
wp option delete 'eafs_forgot_password_url'
wp option delete 'eafs_password_reset_url'
wp option delete 'eafs_enable_keep_alive'

# Clear Cron Jobs
wp cron event delete 'eafs_cron_keep_alive'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eafs_supabase_uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eafs_supabase_uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eafs_supabase_uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eafs_supabase_uuid'"
