#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_pay_page_id'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_techskype_update_%' OR option_name LIKE '_site_transient_techskype_update_%'"
wp transient delete 'techskype_upgrade_woo-sodexo'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sodexo_source_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sodexo_source_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sodexo_source_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sodexo_source_info'"
