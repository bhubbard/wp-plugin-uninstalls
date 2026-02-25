#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'boei_key_option'

# Delete Transients
wp transient delete 'boei_just_connected'
wp transient delete 'boei_activation_notice'

