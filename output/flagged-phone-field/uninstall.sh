#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpfpf_form_data'

# Delete Transients
wp transient delete 'wpfpf_plugin_data'

