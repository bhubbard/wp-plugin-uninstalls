#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ccc_option_api'
wp option delete 'ccc_option_widget_title'
wp option delete 'ccc_option_theme'
wp option delete 'ccc_option_custom_color'
wp option delete 'ccc_option_amount_label'
wp option delete 'ccc_option_from_label'
wp option delete 'ccc_option_to_label'
wp option delete 'ccc_option_result_label'
wp option delete 'ccc_option_default_from'
wp option delete 'ccc_option_default_to'
wp option delete 'ccc_options_widget_title'

