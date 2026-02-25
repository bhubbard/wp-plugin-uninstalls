-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('borgun-rpg-notice-dismissed', 'woocommerce_borgun_rpg_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_processing';

