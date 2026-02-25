#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aipress_openai_settings'
wp option delete 'aipress_openai_api_key'

