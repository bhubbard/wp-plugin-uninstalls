-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gfcnp_plugin', 'pmpro_gateway', 'pmpro_clickandpledge_connect_campaign', 'pmpro_clickandpledge_connect_campaign_subscription', 'pmpro_clickandpledge_connect_campaign_trial');
DELETE FROM wp_options WHERE option_name LIKE 'pmpro_clickandpledge_level_sku_%';
DELETE FROM wp_options WHERE option_name LIKE 'pmpro_clickandpledge_level_gau_%';
DELETE FROM wp_options WHERE option_name LIKE 'pmpro_clickandpledge_connect_campaign_%';

