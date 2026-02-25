#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pal_contact_form_notice_shown'
wp option delete 'pal_contact_form_sandbox'
wp option delete 'pal_contact_form_sandbox_account'
wp option delete 'pal_contact_form_live_account'
wp option delete 'pal_contact_form_currency'
wp option delete 'pal_contact_form_language'
wp option delete 'pal_contact_form_return_url'
wp option delete 'pal_contact_form_cancel_url'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pal_contact_form_setting_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pal_contact_form_setting_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pal_contact_form_setting_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pal_contact_form_setting_data'"
