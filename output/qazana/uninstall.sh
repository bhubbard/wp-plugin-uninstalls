#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qazana_remote_info_api_data'
wp option delete 'active_sitewide_plugins'
wp option delete 'qazana_allow_tracking'
wp option delete 'qazana_tracker_last_send'
wp option delete 'qazana_tracker_notice'
wp option delete '_qazana_installed_time'
wp option delete 'qazana_version'
wp option delete '_qazana_db_version'
wp option delete 'rewrite_rules'
wp option delete 'site_container_width'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp option delete 'qazana_css_print_method'
wp option delete '_qazana_scheme_last_updated'
wp option delete '_qazana_settings_update_time'
wp option delete 'qazana_page_title_selector'
wp option delete 'qazana_google_maps_api_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qazana_scheme_%'"
wp option delete 'qazana_exclude_user_roles'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qazana_extension_%'"
wp option delete 'retina-images'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_schemes'"
wp option delete 'qazana_cpt_support'
wp option delete 'qazana_remote_templates_data'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete '_qazana_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'qazana/tracker/send_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qazana_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qazana_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qazana_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qazana_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qazana_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qazana_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qazana_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qazana_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qazana_draft_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qazana_draft_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qazana_draft_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qazana_draft_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qazana_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qazana_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qazana_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qazana_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qazana_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qazana_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qazana_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qazana_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rich_editing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rich_editing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rich_editing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rich_editing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qazana_source_image_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qazana_source_image_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qazana_source_image_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qazana_source_image_hash'"
