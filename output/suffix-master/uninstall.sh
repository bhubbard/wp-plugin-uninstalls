#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'suffix-master'
wp option delete 'suffix_master_global'
wp option delete 'suffix_master_woocommerce'
wp option delete 'suffix_master_tools'
wp option delete 'suffix_master_version'
wp option delete 'suffix_master_install_time'
wp option delete 'woocommerce_version'

# Clear Cron Jobs
wp cron event delete 'codexpert-daily'
wp cron event delete 'suffix_master_apply_wc_slug'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_suffix_master_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_suffix_master_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_suffix_master_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_suffix_master_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_suffix_master_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_suffix_master_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_suffix_master_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_suffix_master_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_suffix_master_product_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_suffix_master_product_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_suffix_master_product_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_suffix_master_product_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_suffix_master_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_suffix_master_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_suffix_master_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_suffix_master_price'"
