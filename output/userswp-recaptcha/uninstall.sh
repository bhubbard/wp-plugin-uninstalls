#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'uwp_settings'

# Delete Transients
wp transient delete '_uwp_recaptcha_activation_redirect'

