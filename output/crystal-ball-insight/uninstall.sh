#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'crystal_ball_db_version'

# Clear Cron Jobs
wp cron event delete 'cbi/maintenance/clear_old_items'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cbi_elementor_install_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cbi_elementor_install_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cbi_elementor_install_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cbi_elementor_install_notice'"
