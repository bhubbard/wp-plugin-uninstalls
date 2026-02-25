#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'oelm-services-options'
wp option delete 'oelm-phone-options'
wp option delete 'mo-el-general-options'
wp option delete 'oelm_otp_users'
wp option delete 'oelm_last_cleanup'
wp option delete 'oelm-installed-date'
wp option delete 'fs_debug_mode'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oelm_phone_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oelm_phone_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oelm_phone_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oelm_phone_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oelm_phone_no'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oelm_phone_no'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oelm_phone_no'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oelm_phone_no'"
