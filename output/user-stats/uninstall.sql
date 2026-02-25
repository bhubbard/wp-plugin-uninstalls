-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_user-stats--options', 'user_stats_nag');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_statz_count', 'asz_dollar_per_article', 'asz_dollar_per_thousand');
DELETE FROM wp_usermeta WHERE meta_key IN ('_statz_count', 'asz_dollar_per_article', 'asz_dollar_per_thousand');
DELETE FROM wp_termmeta WHERE meta_key IN ('_statz_count', 'asz_dollar_per_article', 'asz_dollar_per_thousand');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_statz_count', 'asz_dollar_per_article', 'asz_dollar_per_thousand');

