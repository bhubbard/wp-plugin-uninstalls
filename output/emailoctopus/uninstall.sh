#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'emailoctopus_api_key'

# Delete Transients
wp transient delete 'emailoctopus_form_settings_saved_status'
wp transient delete 'emailoctopus_api_refresh_status'
wp transient delete 'emailoctopus_load_forms'
wp transient delete 'emailoctopus_api_disconnect_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_emailoctopus_form_automatic_display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_emailoctopus_form_automatic_display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_emailoctopus_form_automatic_display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_emailoctopus_form_automatic_display'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_emailoctopus_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_emailoctopus_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_emailoctopus_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_emailoctopus_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_emailoctopus_form_post_types'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_emailoctopus_form_post_types'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_emailoctopus_form_post_types'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_emailoctopus_form_post_types'"
