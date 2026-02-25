#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'editorify_api_key'
wp option delete 'editorify_error'
wp option delete 'editorify_error_message'
wp option delete 'editorify_check'

