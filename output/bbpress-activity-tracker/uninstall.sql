-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bat_satisfaction_score', '_bbp_reply_count', '_bbp_last_reply_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bat_satisfaction_score', '_bbp_reply_count', '_bbp_last_reply_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bat_satisfaction_score', '_bbp_reply_count', '_bbp_last_reply_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bat_satisfaction_score', '_bbp_reply_count', '_bbp_last_reply_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_bat_score-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_bat_score-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_bat_score-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_bat_score-%';

