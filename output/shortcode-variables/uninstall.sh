#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sh-cd-hash'
wp option delete 'sh-cd-edit-permissions'
wp option delete 'sh-cd-shortcode-db-value-by-id-enabled'
wp option delete 'sh-cd-option-default-editor'
wp option delete 'sh-cd-option-tool-tips-enabled'
wp option delete 'sh-cd-version-number-2021'
wp option delete 'sh-cd-license-valid'
wp option delete '_yeken_shortcode_variables_update_key_last_dismissed'

# Delete Transients
wp transient delete '_yeken_shortcode_variables_latest_premium_version'
wp transient delete '_yeken_shortcode_variables_update'
wp transient delete 'yeken_api_prices'

