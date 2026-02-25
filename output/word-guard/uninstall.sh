#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wordgrd_post_types'
wp option delete 'wordgrd_rules'
wp option delete 'wordgrd_do_activation_redirect'

# Delete Transients
wp transient delete 'wordgrd_rule_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wg_alts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wg_alts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wg_alts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wg_alts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wg_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wg_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wg_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wg_note'"
