#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'twitteraccountbox_options'

# Delete Transients
wp transient delete 'twitteraccountbox_transient'

