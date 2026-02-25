#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'contasimple_settings_account'
wp option delete 'woocommerce_integration-contasimple_settings'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_tax_round_at_subtotal'
wp option delete 'woocommerce_version'
wp option delete 'woocommerce_email_base_color'
wp option delete 'woocommerce_email_footer_text'

# Delete Transients
wp transient delete 'country_API_results'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cs_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cs_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cs_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cs_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'externalID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'externalID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'externalID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'externalID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'date_sync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'date_sync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'date_sync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'date_sync'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'companyID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'companyID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'companyID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'companyID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attempts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attempts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attempts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attempts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'refund_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'refund_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'refund_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'refund_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'args'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'args'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'args'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'args'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mail_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mail_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mail_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mail_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mask'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mask'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mask'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mask'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'api_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'api_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'api_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'api_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'NIF'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'NIF'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'NIF'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'NIF'"
