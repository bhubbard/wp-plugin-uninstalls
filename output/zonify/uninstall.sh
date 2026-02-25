#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zonify_api_key'
wp option delete 'zonify_error'
wp option delete 'zonify_error_message'
wp option delete 'zonifyapp_api_key'
wp option delete 'editorify_error'

