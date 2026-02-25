#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'authora_sms_driver'
wp option delete 'authora_smsir_api_key'
wp option delete 'authora_smsir_template_id'
wp option delete 'authora_farazsms_api_key'
wp option delete 'authora_farazsms_pattern_code'
wp option delete 'authora_farazsms_sender_number'
wp option delete 'authora_shahvar_api_key'
wp option delete 'authora_shahvar_sender_number'
wp option delete 'authora_shahvar_pattern_code'
wp option delete 'authora_enable_mobile_login'
wp option delete 'authora_enable_woo_mobile_login'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
