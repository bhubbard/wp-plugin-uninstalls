#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'getinline_api'
wp option delete 'getinline_project_key'
wp option delete 'getinline_project_widget'
wp option delete 'getinline_project_language'

