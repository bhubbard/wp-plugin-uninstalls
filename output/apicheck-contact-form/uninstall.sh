#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apicheckcontactform_enable_disabled'
wp option delete 'apicheckcontactform_validate_number_addition'
wp option delete 'apicheckcontactform_validate_email'
wp option delete 'apicheckcontactform_api_key'
wp option delete 'apicheckcontactform_enabled_countries'
wp option delete 'apicheckcontactform_all_countries_enabled'

