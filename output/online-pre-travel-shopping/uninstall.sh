#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sfts_settings_value'
wp option delete 'shortcode_default_rectangle'
wp option delete 'shortcode_default_wide'
wp option delete 'shortcode_default_narrow'
wp option delete 'shortcode_default_dynamic-width'

