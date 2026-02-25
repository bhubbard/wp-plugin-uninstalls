#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sfufw_options_settings'
wp option delete 'rewrite_rules'
wp option delete 'canonical_link'
wp option delete 'twp_be_options_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_yoast_wpseo_primary_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_yoast_wpseo_primary_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_yoast_wpseo_primary_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_yoast_wpseo_primary_%'"
