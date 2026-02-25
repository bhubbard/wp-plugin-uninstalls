-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('asyncjs', 'nhp-opts-google-webfonts', 'nhp-opts-saved');
DELETE FROM wp_options WHERE option_name LIKE 'nhp-opts-errors-%';
DELETE FROM wp_options WHERE option_name LIKE 'nhp-opts-warnings-%';

