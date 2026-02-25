#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wx_appid'
wp option delete 'wx_secret'
wp option delete 'wx_token'

# Delete Transients
wp transient delete 'qrcode_access_token'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_code_%' OR option_name LIKE '_site_transient_code_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wx_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wx_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wx_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wx_info'"
