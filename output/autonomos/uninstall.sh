#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'autonomos_is_active'
wp option delete 'autonomos_checkout_redirect'
wp option delete 'autonomos_add_button_quantity'
wp option delete 'autonomos_equivalence_surcharge_is_active'
wp option delete 'autonomos_per_retention'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
