#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cdaily_url'
wp option delete 'cdaily_skip_resource_types'
wp option delete 'cdaily_username'
wp option delete 'cdaily_password'
wp option delete 'cdaily_token'
wp option delete 'cdaily_used'
wp option delete 'cdaily_keypair'
wp option delete 'cdaily_resource_management'
wp option delete 'cdaily_settings'
wp option delete 'datetime_format'
wp option delete 'activation_redirect'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cdnonce_%' OR option_name LIKE '_site_transient_cdnonce_%'"

