#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'maaq_secret_token'
wp option delete 'maaq_secret_path'
wp option delete 'maaq_sso_user_id'
wp option delete 'maaq_do_on_activation_redirect'
wp option delete 'maaq_sync_saved_updates_json'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_maaq__sso_token_%' OR option_name LIKE '_site_transient_maaq__sso_token_%'"
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
