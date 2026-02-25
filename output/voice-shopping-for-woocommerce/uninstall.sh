#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcv_assistant_api_system_key'
wp option delete 'wcv_assistant_trial_valid_until'
wp option delete 'wcva_current_value'
wp option delete 'wcva_last_value'
wp option delete 'wcva_last_value_updated_at'
wp option delete 'wcv_assistant_license_key'
wp option delete 'wcv_assistant_uuid'
wp option delete 'wcva_valid_license_provided'
wp option delete 'woocommerce_permalinks'
wp option delete 'wcv_assistant_settings_updated_timestamp'
wp option delete 'wcva_product_search'
wp option delete 'wcv_assistant_voice'

# Delete Transients
wp transient delete 'wcva_basic_config_option_updated'

