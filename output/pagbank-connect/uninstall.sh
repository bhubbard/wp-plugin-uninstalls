#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_rm-pagbank-integrations_settings'
wp option delete 'woocommerce_rm-pagbank_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'pagbank_db_version'
wp option delete 'woocommerce_rm-pagbank-cc_settings'
wp option delete 'woocommerce_rm-pagbank-pix_settings'
wp option delete 'woocommerce_rm-pagbank-boleto_settings'
wp option delete 'pagbank_pix_lastorder_checked'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_weight_unit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_rm-pagbank-%'"
wp option delete 'woocommerce_rm-pagbank-redirect_settings'
wp option delete 'woocommerce_rm-pagbank-integrations_marketplace_account_id'
wp option delete 'woocommerce_hold_stock_minutes'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'woocommerce_myaccount_page_id'

# Delete Transients
wp transient delete 'rm_pagbank_dynamic_ico_accessible'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rm_pagbank_product_installment_info_%' OR option_name LIKE '_site_transient_rm_pagbank_product_installment_info_%'"
wp transient delete 'pagbank_product_installment_options'
wp transient delete 'pagbank_recurring_message'
wp transient delete 'recurring_restricted_products'

# Clear Cron Jobs
wp cron event delete 'rm_pagbank_cron_process_recurring_payments'
wp cron event delete 'rm_pagbank_cron_process_recurring_cancellations'
wp cron event delete 'rm_pagbank_cron_process_expired_paused'
wp cron event delete 'rm_pagbank_cron_cancel_expired_pix'
wp cron event delete 'rm_pagbank_cron_force_order_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_recurring_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_recurring_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_recurring_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_recurring_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_frequency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_frequency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_frequency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_frequency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_frequency_cycle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_frequency_cycle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_frequency_cycle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_frequency_cycle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_initial_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_initial_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_initial_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_initial_fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_recurring_max_cycles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_recurring_max_cycles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_recurring_max_cycles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_recurring_max_cycles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_recurring_trial_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_recurring_trial_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_recurring_trial_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_recurring_trial_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_recurring_discount_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_recurring_discount_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_recurring_discount_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_recurring_discount_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_recurring_discount_cycles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_recurring_discount_cycles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_recurring_discount_cycles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_recurring_discount_cycles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_recurring_restricted_pages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_recurring_restricted_pages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_recurring_restricted_pages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_recurring_restricted_pages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_recurring_restricted_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_recurring_restricted_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_recurring_restricted_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_recurring_restricted_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_recurring_restricted_unauthorized_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_recurring_restricted_unauthorized_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_recurring_restricted_unauthorized_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_recurring_restricted_unauthorized_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_recurring_restriction_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_recurring_restriction_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_recurring_restriction_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_recurring_restriction_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pagbank_dismiss_pix_order_keys_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pagbank_dismiss_pix_order_keys_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pagbank_dismiss_pix_order_keys_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pagbank_dismiss_pix_order_keys_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pagbank_account_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pagbank_account_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pagbank_account_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pagbank_account_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pagbank_account_validated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pagbank_account_validated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pagbank_account_validated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pagbank_account_validated'"
