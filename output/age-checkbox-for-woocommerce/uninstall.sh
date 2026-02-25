#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_betawooage_checkbox'
wp option delete 'woocommerce_betawooage_multilanguage'
wp option delete 'woocommerce_betawooage_checkboxemessage'
wp option delete 'woocommerce_betawooage_failuremessage'

