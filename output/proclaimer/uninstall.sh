#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'proclaimer_auth_token'
wp option delete 'proclaimer_instance_id'
wp option delete 'proclaimer_api_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'proclaimer_tos_accepted_%'"
wp option delete 'proclaimer-banner-human'
wp option delete 'proclaimer-large-human'
wp option delete 'proclaimer-small-human'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_proclaimer_validation_lock_%' OR option_name LIKE '_site_transient_proclaimer_validation_lock_%'"
wp transient delete 'proclaimer_subscription_status'
wp transient delete 'proclaimer_session_lock'
wp transient delete 'proclaimer_session_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'proclaimer_result'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'proclaimer_result'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'proclaimer_result'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'proclaimer_result'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'proclaimer_last_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'proclaimer_last_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'proclaimer_last_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'proclaimer_last_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'proclaimer_last_check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'proclaimer_last_check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'proclaimer_last_check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'proclaimer_last_check'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'proclaimer_error_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'proclaimer_error_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'proclaimer_error_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'proclaimer_error_message'"
