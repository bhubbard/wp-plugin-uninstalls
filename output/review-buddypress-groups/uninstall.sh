#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bp_group_review_email_settings'
wp option delete 'bgr_admin_criteria_settings'
wp option delete 'bgr_admin_general_settings'
wp option delete 'bgr_admin_display_settings'
wp option delete 'bp-active-components'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bgr_review_count_%' OR option_name LIKE '_site_transient_bgr_review_count_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'linked_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'linked_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'linked_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'linked_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'review_star_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'review_star_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'review_star_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'review_star_rating'"
