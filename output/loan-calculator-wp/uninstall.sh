#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ww_loan_option'
wp option delete 'lc_avoid_notice'
wp option delete 'lc_rating_notice'
wp option delete 'last_notice_timestamp'
wp option delete 'plugin_activation_time'
wp option delete 'ww_loan_option[font_family_new_theme]'
wp option delete 'loan_calculator_db_version'
wp option delete 'delete_data_enable'

