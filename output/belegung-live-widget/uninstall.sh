#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'belewi_options'

# Delete Transients
wp transient delete 'belewi_do_activation_redirect'

