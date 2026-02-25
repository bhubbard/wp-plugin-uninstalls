#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aw_remote_management'
wp option delete 'aw_maint_mode'
wp option delete 'aw_maint_exceptions'
wp option delete 'aw_maint_title'
wp option delete 'aw_maint_message'
wp option delete 'active_sitewide_plugins'
wp option delete 'aw_remote_api_key'
wp option delete 'aw_remote_api_secret'
wp option delete 'aw_woo_prod_sales_count'
wp option delete 'aw_woo_prod_dimensions'
wp option delete 'aw_woo_past_order_count'
wp option delete 'aw_woo_utm'
wp option delete 'aw_woo_msp'
wp option delete 'aw_update_site_url'

# Delete Transients
wp transient delete 'update_core'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_supplier_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_supplier_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_supplier_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_supplier_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_supplier_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_supplier_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_supplier_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_supplier_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_supplier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_supplier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_supplier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_supplier'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_utm'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_utm'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_utm'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_utm'"
