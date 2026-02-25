-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pmidplus_options', 'pmidplus_rate_notice_dismissed', 'pmidplus_reminder_date');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pcp_article_sources');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pcp_article_sources');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pcp_article_sources');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pcp_article_sources');

