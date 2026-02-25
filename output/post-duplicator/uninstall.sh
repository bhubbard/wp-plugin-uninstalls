#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scporder_options'
wp option delete 'mtphr_postduplicator_version_upgraded_from'
wp option delete 'mtphr_postduplicator_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'mtphr_post_duplicator_notice_dismissed_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'mtphr_post_duplicator_notice_dismissed_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'mtphr_post_duplicator_notice_dismissed_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mtphr_post_duplicator_notice_dismissed_%'"
