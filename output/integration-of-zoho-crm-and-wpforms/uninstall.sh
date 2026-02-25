#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bitwpfzc_erase_all'
wp option delete 'bitwpfzc_db_version'
wp option delete 'bitwpfzc_installed'
wp option delete 'bitwpfzc_version'
wp option delete 'bitwpfzc_routes'

