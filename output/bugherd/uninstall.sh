#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bugherd_disable_query_params'
wp option delete 'bugherd_project_key'
wp option delete 'bugherd_enable_admin'

