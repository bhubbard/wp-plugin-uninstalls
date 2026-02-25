-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('almaweb_settings', 'almaweb_db_version', 'almaweb_upgrade_error', 'almaweb_distinct_families', 'almaweb_top_referrers', 'almaweb_referrer_timeline');
DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%';
DELETE FROM wp_options WHERE option_name LIKE 'almaweb_visits_by_family_%';
DELETE FROM wp_options WHERE option_name LIKE 'almaweb_referrer_insights_%';

