#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'persian_gf_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'persian_gf_dismiss_notice_%'"
wp option delete 'persian_gf_dismiss_notice_all'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'persian_gf_notice_v%'"
wp option delete 'gf_sms_last_sender'
wp option delete 'admin_phone_prefix'
wp option delete 'wp_subscribes_send_sms'
wp option delete 'wp_subscribes_text_send'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gform-entry-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gform-entry-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gform-entry-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gform-entry-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone_number'"
