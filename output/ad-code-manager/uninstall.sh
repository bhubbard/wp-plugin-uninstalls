#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acm_options'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_acm_validation_error_%' OR option_name LIKE '_site_transient_acm_validation_error_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'operator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'operator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'operator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'operator'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'conditionals'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'conditionals'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'conditionals'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'conditionals'"
