#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dwl_pin_it_button_settings'
wp option delete 'dwl_pin_it_activation_time'
wp option delete 'dwl_pin_it_version'

