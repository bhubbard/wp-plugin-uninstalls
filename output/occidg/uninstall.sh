#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'occidg_license_key'
wp option delete 'occidg_ai_model'
wp option delete 'occidg_auto_add_details'
wp option delete 'occidg_metadata_fields'
wp option delete 'occidg_override_metadata'
wp option delete 'occidg_language'
wp option delete 'occidg_trial_expired'
wp option delete 'occidg_license_status'
wp option delete 'occidg_trial_usage'
wp option delete 'occidg_activation_redirect'
wp option delete 'occidg_first_time'

# Delete Transients
wp transient delete 'occidg_trial_salt'
wp transient delete 'occidg_image_error'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
