#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'popify_api_key'
wp option delete 'popify_error'
wp option delete 'popify_error_message'

