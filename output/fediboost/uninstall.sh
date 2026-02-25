#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fediboost_accounts'
wp option delete 'fediboost_activated'
wp option delete 'fediboost_instance_apps'
wp option delete 'fediboost_show_activitypub_notice'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_fediboost_account_%' OR option_name LIKE '_site_transient_fediboost_account_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_fediboost_pending_%' OR option_name LIKE '_site_transient_fediboost_pending_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_activitypub_activity_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_activitypub_activity_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_activitypub_activity_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_activitypub_activity_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_activitypub_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_activitypub_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_activitypub_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_activitypub_object_id'"
