#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'header_tracking_script_code'
wp option delete 'page_tracking_script_code'
wp option delete 'footer_tracking_script_code'
wp option delete 'tsm_is_processing'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'r8_tsm_script_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'r8_tsm_script_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'r8_tsm_script_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'r8_tsm_script_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'r8_tsm_encoded_save'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'r8_tsm_encoded_save'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'r8_tsm_encoded_save'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'r8_tsm_encoded_save'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'r8_tsm_script_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'r8_tsm_script_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'r8_tsm_script_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'r8_tsm_script_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'r8_tsm_script_expiry_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'r8_tsm_script_expiry_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'r8_tsm_script_expiry_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'r8_tsm_script_expiry_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'r8_tsm_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'r8_tsm_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'r8_tsm_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'r8_tsm_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'r8_tsm_script_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'r8_tsm_script_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'r8_tsm_script_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'r8_tsm_script_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'r8_tsm_script_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'r8_tsm_script_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'r8_tsm_script_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'r8_tsm_script_order'"
