#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vareoncalc_lite_options'
wp option delete 'vareoncalc_onboarding_status'

# Delete Transients
wp transient delete 'vareoncalc_pro_activated'
wp transient delete 'vareoncalc_pro_deactivated'
wp transient delete 'vareoncalc_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vareoncalc_upgrade_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vareoncalc_upgrade_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vareoncalc_upgrade_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vareoncalc_upgrade_notice_dismissed'"
