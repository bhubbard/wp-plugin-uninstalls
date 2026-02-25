#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'myanalytics_setting_use_webmaster_tools'
wp option delete 'myanalytics_setting_code_id'
wp option delete 'myanalytics_setting_code'
wp option delete 'myanalytics_setting_code_letter'
wp option delete 'myanalytics_setting_message'
wp option delete 'myanalytics_setting_message_dnt'
wp option delete 'myanalytics_setting_message_decline'

