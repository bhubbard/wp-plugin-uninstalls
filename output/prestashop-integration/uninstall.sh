#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'prestashop_integration_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_prestashop_integration_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_prestashop_integration_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_prestashop_integration_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_prestashop_integration_products'"
