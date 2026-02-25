#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mbwp_helper'
wp option delete 'whp_setting'
wp option delete 'btnCartName'
wp option delete 'convertZeroToContact'
wp option delete 'showBuyNow'
wp option delete 'tiki'
wp option delete 'shopee'
wp option delete 'lazada'
wp option delete 'sendo'
wp option delete 'fullname'
wp option delete 'address'
wp option delete 'country'
wp option delete 'company'
wp option delete 'zipCode'
wp option delete 'province'
wp option delete 'momo'
wp option delete 'zaloPay'
wp option delete 'vnPay'
wp option delete 'shopeePay'
wp option delete 'notify'
wp option delete 'vat'
wp option delete 'compact'
wp option delete 'telegram'
wp option delete 'telegramToken'
wp option delete 'telegramChatid'
wp option delete 'duplicate_page_options'
wp option delete 'rewrite_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'product-ecommerce-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'product-ecommerce-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'product-ecommerce-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'product-ecommerce-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mb_hpwc_invoice_vat_input'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mb_hpwc_invoice_vat_input'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mb_hpwc_invoice_vat_input'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mb_hpwc_invoice_vat_input'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_vat_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_vat_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_vat_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_vat_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_vat_tax_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_vat_tax_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_vat_tax_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_vat_tax_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_vat_company_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_vat_company_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_vat_company_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_vat_company_address'"
