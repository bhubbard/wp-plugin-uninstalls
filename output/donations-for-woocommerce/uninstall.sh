#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hm_wcdon_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_first_activate'"
wp option delete 'hm_wcdon_rd_notice_hidden'
wp option delete 'hm_wcdon_first_activate'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rd_notice_hidden'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_donation_amount_increment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_donation_amount_increment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_donation_amount_increment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_donation_amount_increment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
