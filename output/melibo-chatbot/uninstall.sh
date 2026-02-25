#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'melibo_api_key'
wp option delete 'melibo_environment_id'
wp option delete 'melibo_environment_select_pages'
wp option delete 'melibo_activate'
wp option delete 'melibo_excluded_pages'

