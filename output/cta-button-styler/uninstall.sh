#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cta_button_name'
wp option delete 'cta_button_effects'
wp option delete 'cta_button_options'
wp option delete 'cta_button_hover_options'

