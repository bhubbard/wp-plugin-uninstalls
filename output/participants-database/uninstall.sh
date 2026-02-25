#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_id_store'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%csv_import_params'"
wp option delete 'sm_session_db_version'

# Delete Transients
wp transient delete 'xnau-updater-notice-plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-initial-tz' OR option_name LIKE '_site_transient_%-initial-tz'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%final-report' OR option_name LIKE '_site_transient_%final-report'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

