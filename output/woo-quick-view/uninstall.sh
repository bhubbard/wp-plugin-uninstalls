#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcqv_options'
wp option delete 'wcqv_style'
wp option delete 'wpcqv_view_install_date'
wp option delete 'woocommerce_enable_lightbox'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcqv_view_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcqv_view_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcqv_view_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcqv_view_ignore_notice'"
