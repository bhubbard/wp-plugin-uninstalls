#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fdp_divi_builder'

# Delete Transients
wp transient delete 'fdp-divi-builder-notice-succ'
wp transient delete 'fdp-divi-builder-notice-fail'

