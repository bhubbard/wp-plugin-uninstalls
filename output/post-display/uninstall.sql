-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tzpost_excerptlen_one', 'tzpost_excerptlen', 'tzpostsmethod1', 'tzpostsmethod2', 'tzpostsmethod3');
DELETE FROM wp_options WHERE option_name LIKE 'tzpostsmethod%';
DELETE FROM wp_options WHERE option_name LIKE 'tzpost%';

