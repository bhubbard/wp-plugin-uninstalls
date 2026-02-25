#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'listamester_lmid'
wp option delete 'listamester_lmpwd'
wp option delete 'lm_user_id'
wp option delete 'lm_api_key'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_listamester_form_%' OR option_name LIKE '_site_transient_listamester_form_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_listamester_html_%' OR option_name LIKE '_site_transient_listamester_html_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_listamester_js_%' OR option_name LIKE '_site_transient_listamester_js_%'"

