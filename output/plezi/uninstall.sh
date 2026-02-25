#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plz_configuration_authentification_options'
wp option delete 'plz_configuration_tracking_options'
wp option delete 'classic-editor-replace'
wp option delete 'plz_configuration_options'

# Delete Transients
wp transient delete 'plezi_wpbakery_forms'

