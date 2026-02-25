#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ehmc_show_summary'
wp option delete 'ehmc_show_table'
wp option delete 'ehmc_show_chart'
wp option delete 'ehmc_default_amount'
wp option delete 'ehmc_default_interest'
wp option delete 'ehmc_default_years'
wp option delete 'ehmc_label_amount'
wp option delete 'ehmc_label_interest'
wp option delete 'ehmc_label_years'
wp option delete 'ehmc_label_button_calculate'
wp option delete 'ehmc_label_button_reset'
wp option delete 'ehmc_delete_data_on_uninstall'
wp option delete 'ehmc_primary_color'
wp option delete 'ehmc_button_color_calculate'
wp option delete 'ehmc_button_color_reset'
wp option delete 'ehmc_table_header_color'
wp option delete 'ehmc_border_radius'

