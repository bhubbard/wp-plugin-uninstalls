#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gtmkit_version'
wp option delete 'gtmkit_activation_prevent_redirect'
wp option delete 'gtmkit_initial_version'
wp option delete 'auto_update_plugins'
wp option delete 'gtm_ecommerce_woo_gtm_snippet_head'
wp option delete 'edd_settings'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'gtmkit'

# Delete Transients
wp transient delete 'gtmkit_activation_redirect'
wp transient delete 'gtmkit_templates'

# Clear Cron Jobs
wp cron event delete 'gtmkit_send_anonymous_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gtmkit_page_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gtmkit_page_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gtmkit_page_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gtmkit_page_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'rank_math_primary_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'rank_math_primary_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'rank_math_primary_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rank_math_primary_%'"
