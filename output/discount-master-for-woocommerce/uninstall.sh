#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_active_discounts'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cross_subtotal_activated'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cross_total_activated'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_you_saved_activated'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_you_saved_custom_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_you_saved_round'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_active_discounts' OR option_name LIKE '_site_transient_%_active_discounts'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_admin_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_admin_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_admin_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_admin_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_discount_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_discount_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_discount_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_discount_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_discount_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_discount_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_discount_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_discount_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_discount_activated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_discount_activated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_discount_activated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_discount_activated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dmfwc_you_saved'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dmfwc_you_saved'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dmfwc_you_saved'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dmfwc_you_saved'"
