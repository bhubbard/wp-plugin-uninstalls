#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'riq_options'

# Delete Transients
wp transient delete 'riq_jpeg_quality'

