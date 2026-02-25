#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ctcl_activate_phone_pay'
wp option delete 'ctcl_phone_pay_phone_number'
wp option delete 'ctcl_tax_rate'
wp option delete 'ctcl_currency'

