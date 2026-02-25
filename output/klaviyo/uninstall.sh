#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'klaviyo_settings'
wp option delete 'woocommerce_klaviyo_version'
wp option delete 'klaviyo_activation_time'
wp option delete 'klaviyo_feedback_response'
wp option delete 'klaviyo_review_dismissed'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'is_klaviyo_plugin_outdated'

