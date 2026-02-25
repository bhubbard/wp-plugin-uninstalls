#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_adminoptim_locked_%'"
wp option delete 'adminoptim_db_log'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'default_%'"
wp option delete 'adminoptim_last_optimize_db_time'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_adminoptim_locked_%' OR option_name LIKE '_site_transient_adminoptim_locked_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_adminoptim_failed_login_%' OR option_name LIKE '_site_transient_adminoptim_failed_login_%'"
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adminoptim_2fa'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adminoptim_2fa'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adminoptim_2fa'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adminoptim_2fa'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adminoptim_disable_account'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adminoptim_disable_account'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adminoptim_disable_account'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adminoptim_disable_account'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_adminoptim_lock_modified_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_adminoptim_lock_modified_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_adminoptim_lock_modified_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_adminoptim_lock_modified_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_adminoptim_temp_modified_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_adminoptim_temp_modified_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_adminoptim_temp_modified_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_adminoptim_temp_modified_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_adminoptim_xml_exclude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_adminoptim_xml_exclude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_adminoptim_xml_exclude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_adminoptim_xml_exclude'"
