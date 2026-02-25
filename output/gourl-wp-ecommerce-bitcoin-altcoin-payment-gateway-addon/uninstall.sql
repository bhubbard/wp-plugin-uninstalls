-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('currency_type');
DELETE FROM wp_options WHERE option_name LIKE '%logo';
DELETE FROM wp_options WHERE option_name LIKE '%defcoin';
DELETE FROM wp_options WHERE option_name LIKE '%deflang';
DELETE FROM wp_options WHERE option_name LIKE '%emultiplier';
DELETE FROM wp_options WHERE option_name LIKE '%ostatus';
DELETE FROM wp_options WHERE option_name LIKE '%ostatus2';
DELETE FROM wp_options WHERE option_name LIKE '%iconwidth';
DELETE FROM wp_options WHERE option_name LIKE '%_log';

