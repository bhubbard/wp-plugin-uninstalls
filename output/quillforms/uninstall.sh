#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'quillforms_version'
wp option delete 'quillforms-flush-rewrite-rules'
wp option delete 'quillforms_ai_api_key'
wp option delete 'quillforms_license'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'
wp transient delete 'quillforms_installing'

# Clear Cron Jobs
wp cron event delete 'quillforms_cleanup_logs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blocks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blocks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blocks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blocks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'messages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'messages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'messages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'messages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notifications'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notifications'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notifications'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notifications'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupons_usage_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupons_usage_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupons_usage_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupons_usage_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'theme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'theme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'theme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'theme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quiz'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quiz'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quiz'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quiz'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customCSS'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customCSS'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customCSS'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customCSS'"
