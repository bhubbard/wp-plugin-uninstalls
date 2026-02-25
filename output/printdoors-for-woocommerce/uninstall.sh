#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'printdoors_domain'
wp option delete 'printdoors_code'
wp option delete 'printdoors_access_key'
wp option delete 'printdoors_store_id'

