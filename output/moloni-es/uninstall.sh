#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_tax_based_on'

# Clear Cron Jobs
wp cron event delete 'moloniEsProductsSync'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_moloni_file_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_moloni_file_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_moloni_file_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_moloni_file_name'"
