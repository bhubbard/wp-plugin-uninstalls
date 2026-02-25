-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sc_hide_sku_enabled', 'sc_hide_sku_hide_admins_front', 'sc_hide_sku_install_time', 'sc_hide_sku_review_dismissed');
DELETE FROM wp_options WHERE option_name LIKE '%_install_time';
DELETE FROM wp_options WHERE option_name LIKE '%_version';

