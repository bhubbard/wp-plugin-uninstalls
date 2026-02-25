#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pay_check_mate_tables_created'
wp option delete 'pay_check_mate_onboarding'
wp option delete 'pay_check_mate_installed'
wp option delete 'pay_check_mate_version'
wp option delete 'pay_check_mate_general_settings'

# Delete Transients
wp transient delete 'pay_check_mate_redirect_after_activation'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'address'"
