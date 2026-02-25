#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'htga4_secret_key'
wp option delete 'htga4_diagnostic_data_agreed'
wp option delete 'htga4_diagnostic_data_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_bar'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_popup'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_redirect'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_timer'"
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'htga4_email'
wp option delete 'htga4_sr_api_key'
wp option delete 'ht_easy_ga4_options'
wp option delete 'ht_easy_ga4_id'
wp option delete 'htga4_settings'
wp option delete 'htga4_shown_milestones'
wp option delete 'htga4_disable_upgrade_notices'
wp option delete 'htga4_api_data'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_htiop_data' OR option_name LIKE '_site_transient_%_htiop_data'"
wp transient delete 'htga4_access_token'
wp transient delete 'htga4_show_conversion_upgrade_notice'
wp transient delete 'htga4_milestone_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_htga4_server_side_tracked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_htga4_server_side_tracked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_htga4_server_side_tracked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_htga4_server_side_tracked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_htga4_conversion_tracked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_htga4_conversion_tracked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_htga4_conversion_tracked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_htga4_conversion_tracked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_htga4_pending_conversion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_htga4_pending_conversion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_htga4_pending_conversion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_htga4_pending_conversion'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_htga4_pending_conversions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_htga4_pending_conversions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_htga4_pending_conversions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_htga4_pending_conversions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'htga4_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'htga4_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'htga4_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'htga4_dismissed_notices'"
