#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trustcaptcha_plugins'
wp option delete 'trustcaptcha_options'
wp option delete 'trustcaptcha_network_options'

# Delete Transients
wp transient delete 'trustcaptcha_error'

