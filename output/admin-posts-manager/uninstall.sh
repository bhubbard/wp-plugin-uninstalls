#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apm_dismiss_feedback'

# Delete Transients
wp transient delete 'apm_plugin_activated'
wp transient delete 'apm_maybe_later_feedback'

