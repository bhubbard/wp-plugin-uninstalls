-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'ddghr-%';
DELETE FROM wp_options WHERE option_name LIKE 'ddghf-%';

