#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_saltpay_cl_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient__saltpay_loans_%' OR option_name LIKE '_site_transient__saltpay_loans_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient__saltpay_loan_advert_%' OR option_name LIKE '_site_transient__saltpay_loan_advert_%'"

