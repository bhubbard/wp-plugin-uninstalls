#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'api_key'
wp option delete 'list_id'
wp option delete 'customize_html'

