#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'serend_animations_debug_mode'

# Delete Transients
wp transient delete 'serend_animations_activation_notice'

