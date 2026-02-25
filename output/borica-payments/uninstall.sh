#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_borica_woo_payment_gateway_settings'
wp option delete 'borica_direct'
wp option delete 'borica_testmode'
wp option delete 'borica_status'
wp option delete 'borica_debug'
wp option delete 'borica_mname'
wp option delete 'borica_unsuccess_message'
wp option delete 'borica_success_message'
wp option delete 'borica_email'
wp option delete 'borica_text_color'
wp option delete 'borica_mid_bgn'
wp option delete 'borica_tid_bgn'
wp option delete 'borica_test_key_bgn'
wp option delete 'borica_test_password_bgn'
wp option delete 'borica_production_key_bgn'
wp option delete 'borica_production_password_bgn'
wp option delete 'borica_mid_eur'
wp option delete 'borica_tid_eur'
wp option delete 'borica_test_key_eur'
wp option delete 'borica_test_password_eur'
wp option delete 'borica_production_key_eur'
wp option delete 'borica_production_password_eur'
wp option delete 'borica_payment_response'
wp option delete 'borica_payment_response_template'
wp option delete 'borica_recurring'
wp option delete 'borica_recurring_cancel_button'
wp option delete 'borica_payment_lang'
wp option delete 'borica_db_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_borica_receipt_page_%' OR option_name LIKE '_site_transient_borica_receipt_page_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_borica_recurring_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_borica_recurring_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_borica_recurring_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_borica_recurring_ids'"
