#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sfsbwc_settings'
wp option delete 'sfsbwc_detected_heading_font'
wp option delete 'sfsbwc_options_v1'
wp option delete 'sfsbwc_options'

# Delete Transients
wp transient delete 'sfsbwc_activation_redirect'

