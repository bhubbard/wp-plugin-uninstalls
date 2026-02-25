#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'formbricks_environment_id'
wp option delete 'formbricks_api_host'
wp option delete 'formbricks_global_toggle'

