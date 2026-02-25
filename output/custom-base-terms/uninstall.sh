#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'custom-base-terms'

# Delete Transients
wp transient delete 'custom_base_terms_plugin'

