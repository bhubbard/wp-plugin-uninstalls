#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tx_valid_options'

# Delete Transients
wp transient delete 'taxonomies_essentials_activate_redirect'

