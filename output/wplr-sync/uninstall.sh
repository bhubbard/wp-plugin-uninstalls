#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wplr_media_library'
wp option delete 'wplr_media_modals'
wp option delete 'wplr_public_api'
wp option delete 'wplr_hide_extensions'
wp option delete 'wplr_debugging_enabled'
wp option delete 'wplr_library_show_hierarchy'
wp option delete 'wplr_debuglogs'
wp option delete 'wplr_catch_errors'
wp option delete 'wplr_check_same_file'
wp option delete 'meowapps_hide_ads'
wp option delete 'wplr_enable_keywords'
wp option delete 'wplr_sync_keywords'
wp option delete 'wr2x_big_image_size_threshold'
wp option delete 'wplr_plugins'
wp option delete 'wplr_use_taken_date'
wp option delete 'wplr_filename_accents'
wp option delete 'wplr_upload_folder'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp option delete 'nfw_options'
wp option delete 'wplr_media_organizer'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license'"
wp option delete 'force_sslverify'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pro_serial'"
wp option delete 'meowapps_hide_meowapps'
wp option delete 'litespeed.conf.cache-rest'
wp option delete 'mwai_options'
wp option delete 'meowapps_news'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rating_date'"

# Delete Transients
wp transient delete 'wplr_auth_token'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wplr-media-size-%' OR option_name LIKE '_site_transient_wplr-media-size-%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wplr_auth_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wplr_auth_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wplr_auth_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wplr_auth_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_media_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_media_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_media_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_media_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
