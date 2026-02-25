#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jmvstream-api-settings'
wp option delete 'jmvstream-general-settings'
wp option delete 'jmvstream_do_activation_redirect'

# Delete Transients
wp transient delete 'jmvstream_auth_token'

