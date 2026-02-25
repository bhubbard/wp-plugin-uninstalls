#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dwc_account_information'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_account_information'"
wp option delete 'dwc_advanced_settings'
wp option delete 'dwc_form_custom'
wp option delete 'dwc_form_setup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
