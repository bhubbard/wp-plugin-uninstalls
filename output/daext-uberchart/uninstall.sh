#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_chartjs_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_chartjs_adapter_date_fns_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_assets_mode'"
wp option delete 'daextubch_options_version'
wp option delete 'daextubch_database_version'
wp option delete 'daextubch_assets_mode'
wp option delete 'daextubch_chartjs_url'
wp option delete 'daextubch_chartjs_adapter_date_fns_url'
wp option delete 'daextubch_verify_single_shortcode'
wp option delete 'daextubch_max_execution_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_verify_single_shortcode'"
wp option delete 'daextubch_max_execution_time_value'

