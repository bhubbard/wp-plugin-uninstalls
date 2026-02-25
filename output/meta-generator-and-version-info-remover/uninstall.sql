-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('meta_generator_and_version_info_remover_options', 'active_sitewide_plugins');

