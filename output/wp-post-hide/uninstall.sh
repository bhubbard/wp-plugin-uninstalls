#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xswphp_db_version'
wp option delete 'xswphp_data_migrated'
wp option delete 'xswphp_post_types'
wp option delete 'xswphp_enable'

