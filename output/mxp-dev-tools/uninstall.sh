#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mxd_dev_site_passkey'
wp option delete 'adminhash'
wp option delete 'new_admin_email'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'mxp_site_health_report_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%default_password_nag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%default_password_nag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%default_password_nag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%default_password_nag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mxp_dev_block_user_check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mxp_dev_block_user_check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mxp_dev_block_user_check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mxp_dev_block_user_check'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mxp_dev_block_user_msg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mxp_dev_block_user_msg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mxp_dev_block_user_msg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mxp_dev_block_user_msg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
