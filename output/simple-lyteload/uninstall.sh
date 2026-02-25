#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simple_lyteLoad'

# Delete Transients
wp transient delete 'bainternetNews'

