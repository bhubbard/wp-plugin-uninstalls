#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mmawpg_exc_shipping_crg'
wp option delete 'mmawpg_cod_min'
wp option delete 'mmawpg_cheque_min'
wp option delete 'mmawpg_paypal_min'
wp option delete 'mmawpg_bank_min'
wp option delete 'mmawpg_cod_max'
wp option delete 'mmawpg_cheque_max'
wp option delete 'mmawpg_paypal_max'
wp option delete 'mmawpg_bank_max'
wp option delete 'mmawpg_calc_cart'
wp option delete 'woocommerce_currency_pos'
wp option delete 'mmawpg_error_notice_min'
wp option delete 'mmawpg_error_notice_max'
wp option delete 'mmawpg_enable_setting'

