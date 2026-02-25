#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hide_try_gutenberg_callout'
wp option delete 'dismiss_gutenberg_nag_options'

# Delete Transients
wp transient delete 'dismiss_gutenberg_nag_transients'

