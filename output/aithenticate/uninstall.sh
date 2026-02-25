#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aithenticate_license_key'
wp option delete 'aithenticate_license_email'
wp option delete 'aithenticate_fixed_ai_post_types'
wp option delete 'aithenticate_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_up' OR option_name LIKE '_site_transient_%_up'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_content_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_content_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_content_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_content_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aithenticate_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aithenticate_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aithenticate_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aithenticate_enabled'"
