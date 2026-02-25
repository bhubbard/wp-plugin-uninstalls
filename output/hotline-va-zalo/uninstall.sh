#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zalo_number_settings_input_field'
wp option delete 'zalo_text_settings_input_field'
wp option delete 'hotline_number_settings_input_field'
wp option delete 'hotline_text_settings_input_field'

