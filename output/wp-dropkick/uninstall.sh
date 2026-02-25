#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dropkick_jquery_selectors'
wp option delete 'dropkick_mobile_device_support'
wp option delete 'dropkick_ie8_support'

