#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'btcl_settings'
wp option delete 'btcl_string_translation'
wp option delete 'btcl_email_templates'
wp option delete 'btcl_sms_templates'
wp option delete 'btcl_email_settings'
wp option delete 'wprsmp_settings_data'
wp option delete 'clockify_dashboard'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
