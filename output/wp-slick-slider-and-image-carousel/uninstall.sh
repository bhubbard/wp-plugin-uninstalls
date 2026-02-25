#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpos_anylc_redirect'
wp option delete 'wpos_anylc_site_uid'

# Delete Transients
wp transient delete 'wpsisac_install_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpos_anylc_optin_notice_%' OR option_name LIKE '_site_transient_wpos_anylc_optin_notice_%'"

# Clear Cron Jobs
wp cron event delete 'wpos_monthly_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsisac_slide_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsisac_slide_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsisac_slide_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsisac_slide_link'"
