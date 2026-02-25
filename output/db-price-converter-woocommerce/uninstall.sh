#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'db_woo_converter_currency_from'
wp option delete 'db_woo_converter_currency_to'
wp option delete 'db_woo_converter_date'
wp option delete 'db_woo_converter_date_cbr'
wp option delete 'db_woo_converter_rate_cbr'
wp option delete 'db_woo_converter_rate'
wp option delete 'db_woo_converter_if_cbr'
wp option delete 'db_woo_converter_margin'
wp option delete 'db_woo_converter_status'
wp option delete 'db_woo_converter_round'

