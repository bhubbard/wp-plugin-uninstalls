#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sfwf_licenses'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sfwf_form_id_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sfwf_general_settings%'"
wp option delete 'sfwf_reviews_installed_on'
wp option delete 'sfwf_ultimate_settings'
wp option delete 'sfwf_select_form_id'
wp option delete 'sfwf_general_settings'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sfwf_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sfwf_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sfwf_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sfwf_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sfwf_reviews_last_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sfwf_reviews_last_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sfwf_reviews_last_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sfwf_reviews_last_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sfwf_reviews_already_did'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sfwf_reviews_already_did'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sfwf_reviews_already_did'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sfwf_reviews_already_did'"
