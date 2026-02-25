#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mfrh_force_rename'
wp option delete 'mfrh_sync_alt'
wp option delete 'mfrh_sync_media_title'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license'"
wp option delete 'force_sslverify'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pro_serial'"
wp option delete 'meowapps_hide_meowapps'
wp option delete 'litespeed.conf.cache-rest'
wp option delete 'mwai_options'
wp option delete 'meowapps_news'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rating_date'"
wp option delete 'mfrh_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_require_file_renaming'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_require_file_renaming'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_require_file_renaming'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_require_file_renaming'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manual_file_renaming'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manual_file_renaming'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manual_file_renaming'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manual_file_renaming'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mfrh_history'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mfrh_history'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mfrh_history'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mfrh_history'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mfrh_proposed_filename'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mfrh_proposed_filename'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mfrh_proposed_filename'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mfrh_proposed_filename'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mfrh_used_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mfrh_used_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mfrh_used_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mfrh_used_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mfrh_ideal_filename'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mfrh_ideal_filename'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mfrh_ideal_filename'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mfrh_ideal_filename'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mfrh_proposed_filename_exists'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mfrh_proposed_filename_exists'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mfrh_proposed_filename_exists'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mfrh_proposed_filename_exists'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_original_filename'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_original_filename'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_original_filename'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_original_filename'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mfrh_keep_filename'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mfrh_keep_filename'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mfrh_keep_filename'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mfrh_keep_filename'"
