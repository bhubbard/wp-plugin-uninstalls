#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'duplica_version'
wp option delete 'duplica_install_time'
wp option delete 'duplica_settings_init'
wp option delete 'duplica_docs_json'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cx-plugin-info-%' OR option_name LIKE '_site_transient_cx-plugin-info-%'"

# Clear Cron Jobs
wp cron event delete 'codexpert-daily'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_assets'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_assets'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_assets'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_assets'"
