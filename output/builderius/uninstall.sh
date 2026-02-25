#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'builderius_allowed_commits_qty'
wp option delete 'builderius_pro_version_info'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%cached-plugin-versions'"

# Delete Transients
wp transient delete 'builderius_home_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'builderius_dev_preview'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'builderius_dev_preview'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'builderius_dev_preview'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'builderius_dev_preview'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recent_applicant_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recent_applicant_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recent_applicant_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recent_applicant_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'builderius_changelog_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'builderius_changelog_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'builderius_changelog_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'builderius_changelog_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'autopublished'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'autopublished'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'autopublished'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'autopublished'"
