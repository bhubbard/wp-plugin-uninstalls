#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"
wp option delete 'ibanwpf_licenses'
wp option delete 'ibanwpf_reviews_installed_on'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ibanwpf_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ibanwpf_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ibanwpf_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ibanwpf_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ibanwpf_reviews_last_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ibanwpf_reviews_last_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ibanwpf_reviews_last_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ibanwpf_reviews_last_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ibanwpf_reviews_already_did'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ibanwpf_reviews_already_did'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ibanwpf_reviews_already_did'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ibanwpf_reviews_already_did'"
