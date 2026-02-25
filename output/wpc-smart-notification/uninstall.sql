-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcsn_settings', 'wpcsn_localization', 'wpcsn_opts', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wpcsn_%';

