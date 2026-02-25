#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_meta'"
wp option delete 'issuem_flush_rewrite_rules'
wp option delete 'last_zeen101_dot_com_rss_item'
wp option delete 'issuem'
wp option delete 'issuem_nag'
wp option delete 'issuem_nag_version_dismissed'
wp option delete 'issuem_api_error_received'

# Clear Cron Jobs
wp cron event delete 'zeen101_dot_com_rss_feed_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'issuem_rss_item_notice_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'issuem_rss_item_notice_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'issuem_rss_item_notice_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'issuem_rss_item_notice_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_issuem_author_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_issuem_author_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_issuem_author_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_issuem_author_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_teaser_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_teaser_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_teaser_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_teaser_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_featured_rotator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_featured_rotator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_featured_rotator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_featured_rotator'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_featured_thumb'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_featured_thumb'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_featured_thumb'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_featured_thumb'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'issue_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'issue_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'issue_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'issue_order'"
