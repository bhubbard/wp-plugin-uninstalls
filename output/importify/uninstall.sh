#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'importify_api_key'
wp option delete 'importify_error'
wp option delete 'importify_error_message'
wp option delete 'importify_check'

