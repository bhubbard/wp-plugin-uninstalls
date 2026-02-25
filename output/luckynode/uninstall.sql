-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('luckynode-database-version', 'luckynode-crm-settings', 'luckynode-maintenance-mailgun-settings', 'luckynode-optimization-image-sizes', 'luckynode-optimization-image-settings');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';

