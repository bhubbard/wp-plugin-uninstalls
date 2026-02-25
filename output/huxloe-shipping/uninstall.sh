#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'huxloe_shipping_enable_log'
wp option delete 'huxloe_shipping_tenant_id'
wp option delete 'huxloe_shipping_api_key'
wp option delete 'huxloe_shipping_user_id'
wp option delete 'huxloe_shipping_ioss_number'
wp option delete 'huxloe_shipping_eori_number'
wp option delete 'huxloe_shipping_vat_number'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'huxloe_consigmentNumber'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'huxloe_consigmentNumber'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'huxloe_consigmentNumber'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'huxloe_consigmentNumber'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hs_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hs_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hs_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hs_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_huxloe_country_manufacturer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_huxloe_country_manufacturer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_huxloe_country_manufacturer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_huxloe_country_manufacturer'"
