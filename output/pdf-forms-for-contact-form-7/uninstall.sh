#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'recently_activated'
wp option delete 'wpforms_settings'
wp option delete 'pdf-forms-for-woocommerce-settings-pdf-ninja-api-key'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'wpcf7_pdf_forms_pdfninja_key_failure'
wp transient delete 'wpcf7_pdf_forms_updated_old_version'

# Clear Cron Jobs
wp cron event delete 'wpcf7_pdf_forms_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpcf7-pdf-forms-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpcf7-pdf-forms-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpcf7-pdf-forms-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpcf7-pdf-forms-%'"
