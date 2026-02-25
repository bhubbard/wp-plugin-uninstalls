-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('inazo_adv_ads_management_db_version', 'widget_inazo_adv_ads_manager');
DELETE FROM wp_options WHERE option_name LIKE '%_db_version';

