#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_out_of_stock_message'
wp option delete 'woocommerce_out_of_stock'
wp option delete 'wcosm_badge_position'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'wcosm_active'
wp option delete 'woocommerce_stock_email_recipient'
wp option delete 'wcosm_email_admin'
wp option delete 'woocommerce_manage_stock'
wp option delete 'wcosm_deactive'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'woocommerce_prices_include_tax'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_cached_promos' OR option_name LIKE '_site_transient_%_cached_promos'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_out_of_stock_msg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_out_of_stock_msg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_out_of_stock_msg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_out_of_stock_msg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcosm_use_global_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcosm_use_global_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcosm_use_global_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcosm_use_global_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcosm_is_var'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcosm_is_var'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcosm_is_var'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcosm_is_var'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcosm_var_msg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcosm_var_msg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcosm_var_msg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcosm_var_msg'"
