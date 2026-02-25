#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_email_from_address'
wp option delete 'andreani_pyme_info'
wp option delete 'andreani_corporativo_info'

