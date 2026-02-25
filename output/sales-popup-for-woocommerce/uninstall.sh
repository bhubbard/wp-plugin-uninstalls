#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_wts_names_use'
wp option delete '_wts_name_default'
wp option delete '_wts_fake'
wp option delete '_wts_show_price'
wp option delete '_wcs_position'
wp option delete '_wts_mobile'
wp option delete '_wts_user_logged'
wp option delete '_wts_exception_urls'
wp option delete '_wts_position'
wp option delete '_wts_effect'
wp option delete '_wts_effect_delay'
wp option delete '_wts_effect_duration'
wp option delete '_wts_timeout_limit'
wp option delete '_wts_time_delay'
wp option delete 'wts-newsletter'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wts_shows'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wts_shows'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wts_shows'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wts_shows'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wts_product_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wts_product_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wts_product_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wts_product_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wts_clics'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wts_clics'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wts_clics'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wts_clics'"
