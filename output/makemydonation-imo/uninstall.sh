#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mmdimo_api_url'
wp option delete 'mmdimo_username'
wp option delete 'mmdimo_api_key'
wp option delete 'mmdimo_fhid'
wp option delete 'mmdimo_post_type'
wp option delete 'mmdimo_default_state'
wp option delete 'mmdimo_case_check_default'
wp option delete 'mmdimo_update'
wp option delete 'mmdimo_install_uuid'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mmdimo_case'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mmdimo_case'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mmdimo_case'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mmdimo_case'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mmdimo_charity_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mmdimo_charity_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mmdimo_charity_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mmdimo_charity_metadata'"
