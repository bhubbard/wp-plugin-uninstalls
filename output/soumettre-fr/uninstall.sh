#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'soumettre_api_key'
wp option delete 'soumettre_api_secret'
wp option delete 'soumettre_settings'
wp option delete 'soumettre_default_author'
wp option delete 'soumettre_error_notice'
wp option delete 'soumettre_auth_state'
wp option delete 'soumettre_spot_id'
wp option delete 'soumettre_email'
wp option delete 'soumettre_commission'
wp option delete 'soum_sour_api_key'
wp option delete 'soum_sour_api_secret'
wp option delete 'soum_sour_author'
wp option delete 'soum_sour_email'

# Delete Transients
wp transient delete 'soumettre_plugin_old_plugin_version'
wp transient delete 'soumettre_nonce'

# Clear Cron Jobs
wp cron event delete 'soumettre_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'soumettre_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'soumettre_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'soumettre_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'soumettre_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'soumettre_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'soumettre_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'soumettre_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'soumettre_id'"
