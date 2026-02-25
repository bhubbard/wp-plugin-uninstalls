-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nelioab_campaign_last_dismiss', 'neliofp_settings');

