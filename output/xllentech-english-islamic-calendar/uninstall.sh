#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xc_options'
wp option delete 'xc_pro_options'

# Delete Transients
wp transient delete '_xllentech_calendar_activation_redirect'

