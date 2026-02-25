#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'r34rbi_version'
wp option delete 'r34rbi_previous_version'
wp option delete 'r34rbi_deferred_admin_notices'

