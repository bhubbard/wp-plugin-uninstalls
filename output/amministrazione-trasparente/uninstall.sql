-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpgov_at', 'atGroupConf', 'at_version_number', 'at_option_widget', 'at_logic_widget');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_aturl');
DELETE FROM wp_usermeta WHERE meta_key IN ('_aturl');
DELETE FROM wp_termmeta WHERE meta_key IN ('_aturl');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_aturl');

