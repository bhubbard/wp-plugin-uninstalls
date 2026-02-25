#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trafficontent_channel_id'
wp option delete 'trafficontent_consent_given'
wp option delete 'trafficontent_logo_attachment_id'
wp option delete 'trafficontent_connected'
wp option delete 'trafficontent_do_activation_redirect'
wp option delete 'trafficontent_ui_reset_needed'
wp option delete 'trafficontent_token'

# Delete Transients
wp transient delete '_trafficontent_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_application_passwords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_application_passwords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_application_passwords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_application_passwords'"
