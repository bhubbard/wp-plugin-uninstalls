#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ngv_enterprise_activity_report'
wp option delete 'new_validator_table'
wp option delete 'NumbersValidator_your_checked_tables'
wp option delete 'Ngv_checked_serial_tables'
wp option delete 'number_validator'
wp option delete 'your_title'
wp option delete 'your_text'
wp option delete 'your_checked_tables'
wp option delete 'number_validator_shortcode_name'
wp option delete 'NumbersValidator_your_title'
wp option delete 'NumbersValidator_your_text'
wp option delete 'NumbersValidator_shortcode_name'
wp option delete 'NumbersValidator_version'
wp option delete 'NumbersValidator_response1'
wp option delete 'NumbersValidator_response2'
wp option delete 'NumbersValidator_fetch'
wp option delete 'NumbersValidator_gen_shortcode'

