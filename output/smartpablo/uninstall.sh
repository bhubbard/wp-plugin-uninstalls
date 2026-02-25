#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smartpablo_secret'
wp option delete 'sp_smartpablo_secret'
wp option delete 'sp_smartpablo_id'
wp option delete 'sp_smartpablo_webhook_order.created'
wp option delete 'sp_smartpablo_webhook_order.updated'
wp option delete 'sp_smartpablo_webhook_order.deleted'
wp option delete 'sp_smartpablo_webhook_order.restored'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'as_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'as_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'as_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'as_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'business_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'business_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'business_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'business_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tax_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tax_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tax_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tax_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vat_no'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vat_no'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vat_no'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vat_no'"
