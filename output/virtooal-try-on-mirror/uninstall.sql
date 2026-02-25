-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('virtooal_api', 'virtooal_installation_id', 'virtooal_settings', 'virtooal_try_on_mirror_version');
DELETE FROM wp_options WHERE option_name LIKE 'virtooal_%';

