#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sharethis_inline_settings'
wp option delete 'sharethis_sticky_settings'
wp option delete 'sharethis_inline'
wp option delete 'sharethis_sticky'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_on'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_off'"
wp option delete 'sharethis_sticky_category_off'
wp option delete 'sharethis_property_id'
wp option delete 'sharethis_first_product'
wp option delete 'sharethis_gdpr'
wp option delete 'sharethis_token'
wp option delete 'sharethis_button_config'
wp option delete 'sharethis_fract'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sticky_page_off'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sticky_category_off'"
wp option delete 'sharethis_sticky_page_on'
wp option delete 'sharethis_sticky_page_off'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sharethis_%'"

# Delete Transients
wp transient delete 'st-activation'
wp transient delete 'st-connection'

