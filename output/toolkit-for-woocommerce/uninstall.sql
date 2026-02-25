-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('geargag_plugins_list', 'geargag_woocommerce_toolkit_changelog');

