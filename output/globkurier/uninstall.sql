-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('udigroup_globkurier_ghost_post_id', 'globkurier_token', 'globkurier_token_expire_at', 'globkurier_extra_pickup_points', 'gkStoreInpostPointsValidTime', 'globkurier', 'udigroup_gkInPostPoints', 'udigroup_gkInPostPointsDownloadedAt', 'udigroup_gkRuchPointsDownloadedAt', 'udigroup_gkRuchPoints', 'globkurier-username', 'globkurier-password', 'globkurier_countries_map');
DELETE FROM wp_options WHERE option_name LIKE 'globkurier_inpost_international_points_%';

