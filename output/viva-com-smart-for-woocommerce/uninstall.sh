#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_vivacom_smart_settings'

# Delete Transients
wp transient delete 'viva_com_smart_wc_admin_notice'

