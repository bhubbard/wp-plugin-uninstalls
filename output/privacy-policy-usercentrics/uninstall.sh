#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ppguc_addon_events'
wp option delete 'ppguc_usercentrics_page_option'
wp option delete 'ppguc_usercentrics_display_page'
wp option delete 'ppguc_usercentrics_policy_id'
wp option delete 'ppguc_usercentrics_onboarding_complete'

# Delete Transients
wp transient delete 'ppguc_admin_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ppguc_page_published_%' OR option_name LIKE '_site_transient_ppguc_page_published_%'"
wp transient delete 'ppguc_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ppguc_usercentrics_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ppguc_usercentrics_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ppguc_usercentrics_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ppguc_usercentrics_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ppguc_preview_mode_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ppguc_preview_mode_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ppguc_preview_mode_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ppguc_preview_mode_page'"
