#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_general_database_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sherloq_api_form_%'"
wp option delete 'sherloq_api_activation'
wp option delete 'sherloq_api_version'
wp option delete 'sherloq_db_version'

