#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'diffy_api_key'
wp option delete 'diffy_project_id'
wp option delete 'diffy_first_screenshot_id'
wp option delete 'diffy_second_screenshot_id'
wp option delete 'diffy_diff_id'

