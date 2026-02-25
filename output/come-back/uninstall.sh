#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'come_back_activation_date'
wp option delete 'come_back_email_subject'
wp option delete 'come-back-email-editor'
wp option delete 'come_back_email_background_color'
wp option delete 'come_back_inactivity_period'

# Delete Transients
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'come_back_email_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'come_back_email_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'come_back_email_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'come_back_email_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
