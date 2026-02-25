#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dx_option_from_ajax'
wp option delete 'dx_setting'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dx_test_input'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dx_test_input'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dx_test_input'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dx_test_input'"
