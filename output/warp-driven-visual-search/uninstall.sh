#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wd_api_key'
wp option delete 'wd_data_server_key'
wp option delete 'wd_data_server'
wp option delete 'wd_custom_js'
wp option delete 'wd_is_test_mode'

