#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sgcsms_default_sendername'
wp option delete 'sgcsms_default_routing'
wp option delete 'sgcsms_username'
wp option delete 'sgcsms_password'
wp option delete 'sgcsms_apiname'
wp option delete 'sgcsms_otp_settings_option_name'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sgcsmsotpattempts_%' OR option_name LIKE '_site_transient_sgcsmsotpattempts_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sgcsmsotp_validated_%' OR option_name LIKE '_site_transient_sgcsmsotp_validated_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sgcsms_user_mobile_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sgcsms_user_mobile_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sgcsms_user_mobile_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sgcsms_user_mobile_number'"
