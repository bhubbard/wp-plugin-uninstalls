-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%\activation-transient';
DELETE FROM wp_options WHERE option_name LIKE '%_started';
DELETE FROM wp_options WHERE option_name LIKE '%_current_page';
DELETE FROM wp_options WHERE option_name LIKE '%_generated';

