-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('thinkds_discount_strategy', 'thinkds_active_campaigns', 'thinkds_admin_notice');

