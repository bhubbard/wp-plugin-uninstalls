#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pearlbot_logo_id'
wp option delete 'pearlbot_woocommerce_integrated'
wp option delete 'pearlbot_id'
wp option delete 'pearlbot_api_key'
wp option delete 'pearlbot_is_active'
wp option delete 'train_chatbot'
wp option delete 'pearlbot_menu_icon_id'

# Delete Transients
wp transient delete 'pearlbot_admin_notice'

