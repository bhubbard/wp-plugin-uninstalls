-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wmpci_options', 'wmpci_plugin_version', 'wmpci_install_notice');

