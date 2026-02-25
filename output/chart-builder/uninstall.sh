#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ays_chart_builder_upgrade_plugin'
wp option delete 'ays_chart_db_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%db_tables' OR option_name LIKE '_site_transient_%db_tables'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%db_table_mapping' OR option_name LIKE '_site_transient_%db_table_mapping'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cb_charts_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cb_charts_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cb_charts_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cb_charts_per_page'"
