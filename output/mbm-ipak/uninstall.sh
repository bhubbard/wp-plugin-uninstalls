#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_search'"
wp option delete 'mbm_ipak_export_sql'
wp option delete 'mbm_ipak_setting'

