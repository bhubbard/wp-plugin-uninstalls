#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options_params'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options_name'"
wp option delete '_falbar_bbf_options_params'
wp option delete '_falbar_bbf_options_name'

