#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tagsyncer_tab1_option_name'
wp option delete 'tagsyncer_tab2_option_name'
wp option delete 'tagsyncer_tab3_option_name'
wp option delete 'google_tag_manager_settings'

