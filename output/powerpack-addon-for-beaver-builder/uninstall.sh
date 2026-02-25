#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pp_lite_activation_date'

# Delete Transients
wp transient delete 'bb-powerpack-lite-admin-notices'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pp_lite_review_dismiss'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pp_lite_review_dismiss'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pp_lite_review_dismiss'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pp_lite_review_dismiss'"
