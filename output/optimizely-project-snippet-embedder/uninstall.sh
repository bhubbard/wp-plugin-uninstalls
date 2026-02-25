#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mchl_optimizely_data'
wp option delete 'mchl_optimizely_project_id'
wp option delete 'mchl_optimizely_saveadmin_data'

