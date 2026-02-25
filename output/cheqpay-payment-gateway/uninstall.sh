#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_cheqpay_link_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cheqpay_challenge_jwt_%' OR option_name LIKE '_site_transient_cheqpay_challenge_jwt_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cheqpay_challenge_url_%' OR option_name LIKE '_site_transient_cheqpay_challenge_url_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cheqpay_ddc_jwt_%' OR option_name LIKE '_site_transient_cheqpay_ddc_jwt_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cheqpay_ddc_url_%' OR option_name LIKE '_site_transient_cheqpay_ddc_url_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cheqpay_ddc_payment_id_%' OR option_name LIKE '_site_transient_cheqpay_ddc_payment_id_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cheqpay_ddc_session_token_%' OR option_name LIKE '_site_transient_cheqpay_ddc_session_token_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cheqpay_authentication_transaction_id_%' OR option_name LIKE '_site_transient_cheqpay_authentication_transaction_id_%'"

