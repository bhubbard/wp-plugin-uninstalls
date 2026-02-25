#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cma_afterActivation'
wp option delete 'rewrite_rules'
wp option delete 'cma_questions_title'
wp option delete 'cmaer_email_piping_category'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-registration-skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-registered'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-was-registered'"
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'cm_refresh_404_permalinks'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cma_widget_%' OR option_name LIKE '_site_transient_cma_widget_%'"

