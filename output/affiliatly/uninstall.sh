#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'affiliatly_admin_code'
wp option delete 'affiliatly_security_hash'
wp option delete 'alg_currency_switcher_currency_shop_default'
wp option delete 'affiliatly_discount_link_status'
wp option delete 'affiliatly_discount_url_parameter'

