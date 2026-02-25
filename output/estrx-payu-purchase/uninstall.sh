#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'payu_api_db_version'
wp option delete 'plugin_db_version'

