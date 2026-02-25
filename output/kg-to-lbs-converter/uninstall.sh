#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'klc_welcome'
wp option delete 'klc_widget_options'

# Delete Transients
wp transient delete 'klc_activation_redirect_transient'

