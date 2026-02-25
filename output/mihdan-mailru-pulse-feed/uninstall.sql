-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wptrt_notice_dismissed_mihdan-mailru-pulse-feed', 'mihdan_mailru_pulse_feed_review_dismissed', 'feed', 'source', 'widget', 'contacts', 'mihdan_mailru_pulse_feed_version');
DELETE FROM wp_options WHERE option_name LIKE '%_flush_rewrite_rules';
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_title';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_title';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_title';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_title';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_excerpt';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_excerpt';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_excerpt';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_excerpt';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_exclude';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_exclude';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_exclude';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_exclude';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_kill';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_kill';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_kill';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_kill';

