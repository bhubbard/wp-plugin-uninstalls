-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sbi_do_activation_redirect', 'sbi_plugins_blueprint');

