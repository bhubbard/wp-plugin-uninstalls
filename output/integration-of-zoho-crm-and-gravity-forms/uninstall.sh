#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bitgfzc_erase_all'
wp option delete 'bitgfzc_db_version'
wp option delete 'bitgfzc_installed'
wp option delete 'bitgfzc_version'
wp option delete 'bitgfzc_routes'

