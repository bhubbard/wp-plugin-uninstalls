#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cpreftrack_addons_active_list'
wp option delete 'cp_cpreftrack_rep_enable'
wp option delete 'cp_cpreftrack_rep_days'
wp option delete 'cp_cpreftrack_bocsvexclude'
wp option delete 'CP_APPB_CSV_CHARFIX'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cp_cpreftrack_last_sent_id_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_codepeople_promote_banner_%' OR option_name LIKE '_site_transient_codepeople_promote_banner_%'"

# Clear Cron Jobs
wp cron event delete 'cpreftrack_del_old_hook_fmin'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cpreftrack_woocommerce_referrer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cpreftrack_woocommerce_referrer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cpreftrack_woocommerce_referrer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cpreftrack_woocommerce_referrer'"
