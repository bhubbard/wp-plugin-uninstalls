#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"
wp option delete 'wpm_gravity_conversational_licenses'
wp option delete 'gravity_conversation_field_slug'

# Delete Transients
wp transient delete 'update_plugins'

