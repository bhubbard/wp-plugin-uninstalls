#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mgl_captions_enabled'
wp option delete 'mgl_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mgl_%'"
wp option delete 'mgl_shortcodes'
wp option delete 'mgl_collections'
wp option delete 'mgl_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license'"
wp option delete 'force_sslverify'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pro_serial'"
wp option delete 'meowapps_hide_meowapps'
wp option delete 'litespeed.conf.cache-rest'
wp option delete 'mwai_options'
wp option delete 'meowapps_news'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rating_date'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gallery_link_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gallery_link_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gallery_link_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gallery_link_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gallery_link_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gallery_link_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gallery_link_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gallery_link_target'"
