#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'CP_MVC_LOAD_SCRIPTS'
wp option delete 'CP_MVC_DATEFORMAT'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'installed_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_codepeople_promote_banner_%' OR option_name LIKE '_site_transient_codepeople_promote_banner_%'"

# Clear Cron Jobs
wp cron event delete 'cpmvc_data_hook'

