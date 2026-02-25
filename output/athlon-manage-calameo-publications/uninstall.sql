-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('AthlonManageCalameoPublications_db_version', 'calameo_subscription_ids', 'calameo_credentials');

