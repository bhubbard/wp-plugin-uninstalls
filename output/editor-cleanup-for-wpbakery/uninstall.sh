#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fdp_wpbakery'

# Delete Transients
wp transient delete 'fdp-wpbakery-notice-succ'
wp transient delete 'fdp-wpbakery-notice-fail'

