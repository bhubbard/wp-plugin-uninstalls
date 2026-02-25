#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ele_cc_ave_merchant_id'
wp option delete 'ele_cc_ave_working_key'
wp option delete 'ele_cc_ave_access_code'
wp option delete 'ele_cc_ave_redirect_page'
wp option delete 'ele_cc_ave_payment_mode'

