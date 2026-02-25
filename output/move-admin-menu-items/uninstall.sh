#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stb_mami_settings'

# Delete Transients
wp transient delete 'stb_mami_example_transient_for_activation_message'

