#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'swdc_disable_right_click'
wp option delete 'swdc_disable_f12'
wp option delete 'swdc_disable_copy'
wp option delete 'swdc_custom_message'
wp option delete 'swdc_disable_shortcuts'

