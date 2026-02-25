#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc-enviamelo-%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-notices' OR option_name LIKE '_site_transient_%-notices'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_wc_enviamelo_dni'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_wc_enviamelo_dni'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_wc_enviamelo_dni'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_wc_enviamelo_dni'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_wc_enviamelo_dni'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_wc_enviamelo_dni'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_wc_enviamelo_dni'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_wc_enviamelo_dni'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_enviamelo_point'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_enviamelo_point'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_enviamelo_point'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_enviamelo_point'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_enviamelo_point_descr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_enviamelo_point_descr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_enviamelo_point_descr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_enviamelo_point_descr'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_enviamelo_point_schedules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_enviamelo_point_schedules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_enviamelo_point_schedules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_enviamelo_point_schedules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_enviamelo_term'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_enviamelo_term'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_enviamelo_term'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_enviamelo_term'"
