#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'decfirebase_url'
wp option delete 'decfirebase_secrets'

# Delete Transients
wp transient delete '_decfirebase_activation_redirect'

