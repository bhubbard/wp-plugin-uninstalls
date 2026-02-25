#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'orpl_version'
wp option delete 'orpl_currency'
wp option delete 'orpl_tax_rate'
wp option delete 'orpl_vat_rate'
wp option delete 'orpl_currency_position'
wp option delete 'orpl_date_format'
wp option delete 'orpl_shop_name'
wp option delete 'orpl_shop_address'
wp option delete 'orpl_shop_phone'
wp option delete 'orpl_settings'

