#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_unit'"
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_feedbackcompany_%' OR option_name LIKE '_site_transient_feedbackcompany_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpml_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpml_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpml_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpml_language'"
