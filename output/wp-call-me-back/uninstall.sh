#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rcb_settings_options'
wp option delete 'rcb_recaptcha_options'
wp option delete 'rcb_settings_options_picker'

