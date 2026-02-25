#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mpdf_theme'
wp option delete 'mpdf_geshi'
wp option delete 'mpdf_geshi_linenumbers'
wp option delete 'mpdf_caching'
wp option delete 'mpdf_allow_all'
wp option delete 'mpdf_need_login'
wp option delete 'mpdf_stats'
wp option delete 'mpdf_debug'
wp option delete 'mpdf_cron_user'
wp option delete 'mpdf_code_page'

# Clear Cron Jobs
wp cron event delete 'mpdf_generate_pdfs_hook'

