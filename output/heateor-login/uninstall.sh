#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'heateor_fbl_version'
wp option delete 'heateor_fbl'

# Delete Transients
wp transient delete 'heateor-fbl-admin-notice-on-activation'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'heateor_fbl_redirect_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'heateor_fbl_redirect_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'heateor_fbl_redirect_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'heateor_fbl_redirect_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'heateor_fbl_gdpr_consent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'heateor_fbl_gdpr_consent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'heateor_fbl_gdpr_consent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'heateor_fbl_gdpr_consent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'heateor_fbl_dontupdate_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'heateor_fbl_dontupdate_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'heateor_fbl_dontupdate_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'heateor_fbl_dontupdate_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'heateor_fbl_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'heateor_fbl_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'heateor_fbl_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'heateor_fbl_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'heateor_fbl_large_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'heateor_fbl_large_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'heateor_fbl_large_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'heateor_fbl_large_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'heateor_fbl_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'heateor_fbl_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'heateor_fbl_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'heateor_fbl_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'heateor_fbl_temp_userdata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'heateor_fbl_temp_userdata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'heateor_fbl_temp_userdata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'heateor_fbl_temp_userdata'"
