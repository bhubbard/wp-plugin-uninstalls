#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'speed-contact-bar-options'

# Delete Transients
wp transient delete 'speed-contact-bar'

