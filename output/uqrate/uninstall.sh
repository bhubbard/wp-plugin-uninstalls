#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'uqrate_chnkey_key'
wp option delete 'uqrate_opt_dropdown_1'
wp option delete 'uqrate_opt_checkbox_1'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%error'"

