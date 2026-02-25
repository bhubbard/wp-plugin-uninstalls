#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'conditional_blocks_developer_mode'
wp option delete 'conditional_blocks_open_from_toolbar'
wp option delete 'conditional_blocks_only_installed_integrations'
wp option delete 'conditional_blocks_general'
wp option delete 'conditional_blocks_ipinfo_api_key'

