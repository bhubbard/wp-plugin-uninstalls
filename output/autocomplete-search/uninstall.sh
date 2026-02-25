#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'atcl_autosearch_enable_type'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_type_label'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_suggestion'"

