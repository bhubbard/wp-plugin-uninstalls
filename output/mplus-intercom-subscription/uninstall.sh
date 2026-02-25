#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mplusis_subscribe_company_field'
wp option delete 'mplusis_subscribe_company_register_page'
wp option delete 'mplusis_subscribe_to_intercom'
wp option delete 'mplusis_subscription_spam_protection'
wp option delete 'mplusis_subscription_type'
wp option delete 'mplusis_api_key'
wp option delete 'mplusis_shortcode_rendered'
wp option delete 'mplusis_removed_promo'
wp option delete 'mplusis_plugin_activated'
wp option delete 'mplusis_plugin_activated_at'
wp option delete 'mplusis_plugin_deactivated'
wp option delete 'mplusis_plugin_deactivated_at'
wp option delete 'mplusis_app_id'
wp option delete 'mplusis_promo_dismiss_time'
wp option delete 'mplusis_enable_chat'
wp option delete 'mplusis_own_api_key'

# Delete Transients
wp transient delete 'intercom_oauth_nonce'
wp transient delete 'mplusis_promo_notices'

