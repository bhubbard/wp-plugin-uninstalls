#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'relario_api_key'
wp option delete 'relario_debug_mode'
wp option delete 'relario_product_id'
wp option delete 'relario_product_name'
wp option delete 'relario_sms_text_prefix'

# Delete Transients
wp transient delete 'relario_activation_notice'

