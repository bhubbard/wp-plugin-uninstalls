#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sharethis_follow'
wp option delete 'sharethis_first_product'
wp option delete 'sharethis_property_id'
wp option delete 'sharethis_token'
wp option delete 'sharethis_button_config'
wp option delete 'sharethis_inline-follow_settings'
wp option delete 'sharethis_inline-follow'
wp option delete 'sharethis_inline-follows'
wp option delete 'sharethis_follow_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_on'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_off'"

# Delete Transients
wp transient delete 'st-follow-activation'
wp transient delete 'st-follow-connection'

