#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_transient_wc_count_comments'
wp option delete 'dac_disable_option'
wp option delete 'dac_hide_option'

# Delete Transients
wp transient delete 'dac_plugin_activated_redirect'

