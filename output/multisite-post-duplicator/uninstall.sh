#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mdp_settings'
wp option delete 'skip_standard_dup'
wp option delete 'mpd_admin_bulk_notice'
wp option delete 'mpd_admin_notice'
wp option delete 'source_acf_files'
wp option delete 'source_acf_images'
wp option delete 'source_acf_gallery_images'
wp option delete 'mpd_considerations'
wp option delete 'mpd_noted_posttypes'
wp option delete 'mpd_noted_taxonomies'
wp option delete 'mpd_has_dismissed_subdomain_error'
wp option delete 'mdp_version'
wp option delete 'avoid_infinite'
wp option delete 'avoid_infinite_persist'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'mpd_media_source_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'mpd_media_source_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'mpd_media_source_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mpd_media_source_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'mpd_meta_id_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'mpd_meta_id_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'mpd_meta_id_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mpd_meta_id_%'"
