#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chiebot_db_version'
wp option delete 'chiebot_settings'
wp option delete 'chiebot_documents'
wp option delete 'chiebot_license'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_chiebot_admin_notice_%' OR option_name LIKE '_site_transient_chiebot_admin_notice_%'"

