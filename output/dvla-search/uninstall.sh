#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dvla_search_api_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dvla_search_fields_show_%'"

