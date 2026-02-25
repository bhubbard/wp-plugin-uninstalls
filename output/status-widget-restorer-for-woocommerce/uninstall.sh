#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_setup_complete'
wp option delete 'woocommerce_onboarding_completed'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_default_country'
wp option delete 'swrfw7sk_review_dismissed_permanently'
wp option delete 'swrfw7sk_install_date'
wp option delete 'swrfw7sk_review_dismissed_date'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'metaboxhidden_dashboard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'metaboxhidden_dashboard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'metaboxhidden_dashboard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'metaboxhidden_dashboard'"
