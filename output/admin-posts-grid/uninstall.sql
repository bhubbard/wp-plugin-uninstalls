-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'cheritto-admin-grid-columns-count-%';
DELETE FROM wp_options WHERE option_name LIKE 'cheritto-admin-grid-container-bg-%';
DELETE FROM wp_options WHERE option_name LIKE 'cheritto-admin-grid-item-bg-%';
DELETE FROM wp_options WHERE option_name LIKE 'cheritto-admin-grid-theme-%';
DELETE FROM wp_options WHERE option_name LIKE 'cheritto-admin-grid-per-page-%';
DELETE FROM wp_options WHERE option_name LIKE 'cheritto-admin-grid-show-image-%';
DELETE FROM wp_options WHERE option_name LIKE 'cheritto-admin-grid-show-title-%';
DELETE FROM wp_options WHERE option_name LIKE 'cheritto-admin-grid-show-author-%';
DELETE FROM wp_options WHERE option_name LIKE 'cheritto-admin-grid-show-categories-%';
DELETE FROM wp_options WHERE option_name LIKE 'cheritto-admin-grid-show-tags-%';
DELETE FROM wp_options WHERE option_name LIKE 'cheritto-admin-grid-show-actions-%';
DELETE FROM wp_options WHERE option_name LIKE 'cheritto-admin-grid-show-date-%';
DELETE FROM wp_options WHERE option_name LIKE 'cheritto-admin-grid-show-cb-%';

