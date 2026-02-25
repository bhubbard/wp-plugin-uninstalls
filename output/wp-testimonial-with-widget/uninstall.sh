#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpos_anylc_redirect'
wp option delete 'wpos_anylc_site_uid'

# Delete Transients
wp transient delete 'wtwp_install_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpos_anylc_optin_notice_%' OR option_name LIKE '_site_transient_wpos_anylc_optin_notice_%'"
wp transient delete 'espbw_plugins_data'

# Clear Cron Jobs
wp cron event delete 'wpos_monthly_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_testimonial_client'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_testimonial_client'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_testimonial_client'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_testimonial_client'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_testimonial_job'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_testimonial_job'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_testimonial_job'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_testimonial_job'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_testimonial_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_testimonial_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_testimonial_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_testimonial_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_testimonial_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_testimonial_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_testimonial_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_testimonial_url'"
