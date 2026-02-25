#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'statsfa_api_key'
wp option delete 'statsfa_delete_on_uninstall'

