#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aips_lite_options'

# Delete Transients
wp transient delete 'aips_lite_deactivated_due_to_pro'
wp transient delete 'aips_lite_pro_active_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aips_lite_review_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aips_lite_review_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aips_lite_review_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aips_lite_review_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aips_lite_pro_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aips_lite_pro_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aips_lite_pro_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aips_lite_pro_notice_dismissed'"
