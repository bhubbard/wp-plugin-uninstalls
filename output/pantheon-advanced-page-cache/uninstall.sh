#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pantheon-cache'
wp option delete 'pantheon_max_age_updated'

# Delete Transients
wp transient delete 'papc_max_age_compare'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pantheon_max_age_global_warning_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pantheon_max_age_global_warning_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pantheon_max_age_global_warning_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pantheon_max_age_global_warning_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pantheon_max_age_updated_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pantheon_max_age_updated_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pantheon_max_age_updated_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pantheon_max_age_updated_notice'"
