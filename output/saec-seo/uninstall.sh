#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'saec_seo_systemic_last'
wp option delete 'saec_seo_systemic_alerts_last_sent'
wp option delete 'saec_seo_gsc_pages'

# Delete Transients
wp transient delete 'saec_seo_last_notice_details'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_saec_seo_gsc_state_%' OR option_name LIKE '_site_transient_saec_seo_gsc_state_%'"

# Clear Cron Jobs
wp cron event delete 'saec_seo_cron_rebuild_scores'
wp cron event delete 'saec_seo_cron_run_autofix'
wp cron event delete 'saec_seo_daily_rebuild_scores'
wp cron event delete 'saec_seo_daily_autofix_dryrun'
wp cron event delete 'saec_seo_daily_regression_scan'
wp cron event delete 'saec_seo_systemic_daily'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_saec_seo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_saec_seo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_saec_seo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_saec_seo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_saec_seo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_saec_seo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_saec_seo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_saec_seo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_saec_seo_social_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_saec_seo_social_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_saec_seo_social_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_saec_seo_social_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_saec_seo_baseline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_saec_seo_baseline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_saec_seo_baseline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_saec_seo_baseline'"
