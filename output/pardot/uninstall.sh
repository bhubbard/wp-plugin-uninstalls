#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pardot_crypto_key'
wp option delete 'pardot_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pardot_form_html_%' OR option_name LIKE '_site_transient_pardot_form_html_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pardot_dynamicContent_html_%' OR option_name LIKE '_site_transient_pardot_dynamicContent_html_%'"
wp transient delete 'pardot_forms'
wp transient delete 'pardot_dynamicContent'
wp transient delete 'pardot_tracking_code_template'

