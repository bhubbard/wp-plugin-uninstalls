-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_lvl99-omny-embed/installed', '_lvl99-omny-embed/version', '_lvl99-plugin/installed', '_lvl99-plugin/version');
DELETE FROM wp_options WHERE option_name LIKE 'lvl99-plugin/%';

