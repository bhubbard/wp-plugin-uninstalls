#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'imagerr_dismissed_notice'
wp option delete 'imagerr_auto_generate_on_upload'
wp option delete 'imagerr_meta_bulk_completed_state'
wp option delete 'imagerr_api_key'
wp option delete 'imagerr_generate_title'
wp option delete 'imagerr_generate_caption'
wp option delete 'imagerr_generate_description'
wp option delete 'imagerr_generation_language'
wp option delete 'imagerr_meta_prefix'
wp option delete 'imagerr_meta_suffix'
wp option delete 'imagerr_enable_debug_logs'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_completed_state'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_imagerr_bulk_select_%' OR option_name LIKE '_site_transient_imagerr_bulk_select_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imagerr_uploaded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imagerr_uploaded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imagerr_uploaded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imagerr_uploaded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imagerr_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imagerr_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imagerr_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imagerr_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
