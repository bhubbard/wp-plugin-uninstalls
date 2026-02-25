#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gmwqp_field_customizer_enble'
wp option delete 'gmwqp_field_customizer_required'
wp option delete 'gmwqp_field_customizer_field'
wp option delete 'gmwqp_field_customizer_type'
wp option delete 'gmwqp_field_customizer_order'
wp option delete 'gmwqp_field_customizer_option'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_gmwqp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_gmwqp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_gmwqp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_gmwqp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'productid_gmwqp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'productid_gmwqp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'productid_gmwqp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'productid_gmwqp'"
