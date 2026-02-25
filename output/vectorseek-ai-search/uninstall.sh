#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vectorseek_host'
wp option delete 'vectorseek_context'
wp option delete 'vectorseek_api_key'
wp option delete 'vectorseek_search_class'

