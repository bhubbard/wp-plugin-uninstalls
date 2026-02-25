#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quantity_discounts_settings'
wp option delete 'min_max_quantity_discounts_settings'
wp option delete 'quantity_discounts_general_settings'

# Delete Transients
wp transient delete 'quantity_discounts_error'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpiron_qd_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpiron_qd_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpiron_qd_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpiron_qd_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpiron_qd_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpiron_qd_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpiron_qd_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpiron_qd_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpiron_qd_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpiron_qd_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpiron_qd_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpiron_qd_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpiron_qd_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpiron_qd_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpiron_qd_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpiron_qd_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpiron_qd_quantity_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpiron_qd_quantity_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpiron_qd_quantity_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpiron_qd_quantity_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpiron_qd_display_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpiron_qd_display_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpiron_qd_display_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpiron_qd_display_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpiron_qd_min_max_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpiron_qd_min_max_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpiron_qd_min_max_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpiron_qd_min_max_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpiron_qd_min_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpiron_qd_min_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpiron_qd_min_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpiron_qd_min_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpiron_qd_max_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpiron_qd_max_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpiron_qd_max_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpiron_qd_max_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
