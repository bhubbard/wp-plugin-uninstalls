#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sharethis_inline-reaction_settings'
wp option delete 'sharethis_inline-reactions'
wp option delete 'sharethis_reaction_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_on'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_off'"
wp option delete 'sharethis_property_id'
wp option delete 'sharethis_first_product'
wp option delete 'sharethis_reaction'
wp option delete 'sharethis_token'
wp option delete 'sharethis_button_config'
wp option delete 'sharethis_inline-reaction'

# Delete Transients
wp transient delete 'st-reaction-activation'
wp transient delete 'st-reaction-connection'

