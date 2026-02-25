#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'custom-glotpress-src'

# Delete Transients
wp transient delete 'custom-glotpress-available-translations'

