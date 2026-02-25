-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpvl_prettyphoto_options', 'wpvl_enable_fancyBox', 'wpvl_enable_jquery', 'wpvl_enable_prettyPhoto', 'wpvl_plugin_version');

