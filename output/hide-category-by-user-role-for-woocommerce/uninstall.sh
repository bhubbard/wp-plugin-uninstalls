#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tswchc_rules'
wp option delete 'tswchc_redirect_url'
wp option delete 'tswchc_redirect_mode'
wp option delete 'tswchc_display_custom_message'
wp option delete 'tswchc_message_wrapper'
wp option delete 'tswchc_message_styles'
wp option delete 'tswchc_settings'
wp option delete 'tswchc_version'

# Delete Transients
wp transient delete 'wc_term_counts'

