#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'yametrika-counter'
wp option delete 'yandex-metrika'
wp option delete 'wt_yandex_metrika'
wp option delete 'vdz_yandex_metrika_code'
wp option delete 'yam_messages'
wp option delete 'yam_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ym_ec_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ym_ec_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ym_ec_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ym_ec_sent'"
