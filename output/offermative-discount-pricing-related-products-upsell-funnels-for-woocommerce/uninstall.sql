-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sa_om_generation_settings', 'sa_om_admin_details', 'sa_om_views_last_synced_at', 'sa_om_campaigns_last_synced_at', 'sa_om_db_version', 'sa_om_last_synced_at', 'sa_om_campaign_aggressiveness', 'sa_om_max_orders_to_scan', 'active_sitewide_plugins', '_sa_om_activation_redirect', 'sa_om_store_kpis', 'sa_om_max_active_campaigns_count', 'sa_om_token', 'sa_om_installing', 'sa_om_updating');
DELETE FROM wp_options WHERE option_name LIKE '%_last_synced_at';

