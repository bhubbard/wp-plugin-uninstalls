-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('builderius_allowed_commits_qty', 'builderius_pro_version_info', 'builderius_home_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%cached-plugin-versions';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('builderius_dev_preview', 'recent_applicant_url', 'builderius_changelog_notice_dismissed', 'autopublished');
DELETE FROM wp_usermeta WHERE meta_key IN ('builderius_dev_preview', 'recent_applicant_url', 'builderius_changelog_notice_dismissed', 'autopublished');
DELETE FROM wp_termmeta WHERE meta_key IN ('builderius_dev_preview', 'recent_applicant_url', 'builderius_changelog_notice_dismissed', 'autopublished');
DELETE FROM wp_commentmeta WHERE meta_key IN ('builderius_dev_preview', 'recent_applicant_url', 'builderius_changelog_notice_dismissed', 'autopublished');

