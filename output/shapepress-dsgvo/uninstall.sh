#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mailchimp_api_token'
wp option delete 'sp_dsgvo_dsgvo_licence'
wp option delete 'sp_dsgvo_license_activated'

# Delete Transients
wp transient delete 'mr-webinare'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_dsgvo_CSRF_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_dsgvo_CSRF_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_dsgvo_CSRF_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_dsgvo_CSRF_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_dsgvo_popup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_dsgvo_popup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_dsgvo_popup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_dsgvo_popup'"
