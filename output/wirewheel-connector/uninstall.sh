#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wwc_form_config'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wwc_form_%'"
wp option delete 'wwc_form_list'

