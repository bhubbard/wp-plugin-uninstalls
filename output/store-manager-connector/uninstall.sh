#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'SMCONNECTOR_OPTIONS'

# Direct DB Queries (Fallback)
wp db query "DROP TABLE IF EXISTS wp_smconnector_session_keys"
wp db query "DROP TABLE IF EXISTS wp_smconnector_failed_login"
