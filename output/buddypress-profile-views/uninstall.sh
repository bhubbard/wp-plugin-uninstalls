#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'df_displaytext'
wp option delete 'df_countviews'
wp option delete 'bp_profilevisits_db_version'

