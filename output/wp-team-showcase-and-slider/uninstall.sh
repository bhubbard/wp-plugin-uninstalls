#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpos_anylc_redirect'
wp option delete 'wpos_anylc_site_uid'

# Delete Transients
wp transient delete 'tsas_install_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpos_anylc_optin_notice_%' OR option_name LIKE '_site_transient_wpos_anylc_optin_notice_%'"
wp transient delete 'espbw_plugins_data'

# Clear Cron Jobs
wp cron event delete 'wpos_monthly_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_member_designation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_member_designation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_member_designation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_member_designation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_member_department'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_member_department'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_member_department'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_member_department'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_skills'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_skills'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_skills'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_skills'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_member_experience'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_member_experience'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_member_experience'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_member_experience'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_facebook_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_facebook_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_facebook_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_facebook_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_google_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_google_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_google_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_google_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_likdin_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_likdin_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_likdin_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_likdin_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_twitter_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_twitter_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_twitter_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_twitter_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_testimonial_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_testimonial_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_testimonial_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_testimonial_email'"
