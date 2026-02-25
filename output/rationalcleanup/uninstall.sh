#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rationalcleanup_options'
wp option delete 'rationalcleanup_third_party_widgets'

# Delete Transients
wp transient delete 'rationalwp_plugins_list'

