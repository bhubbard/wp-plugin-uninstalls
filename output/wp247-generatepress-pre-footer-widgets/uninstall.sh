#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'generate_background_settings'
wp option delete 'generate_settings'
wp option delete 'generate_spacing_settings'

