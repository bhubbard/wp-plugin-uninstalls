-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cyberimpact_settings');
DELETE FROM wp_options WHERE option_name LIKE 'cyberimpact_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cyberimpact_checkbox', '_cyberimpact_group', '_cyberimpact_opt_in_type', '_cyberimpact_mappings');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cyberimpact_checkbox', '_cyberimpact_group', '_cyberimpact_opt_in_type', '_cyberimpact_mappings');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cyberimpact_checkbox', '_cyberimpact_group', '_cyberimpact_opt_in_type', '_cyberimpact_mappings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cyberimpact_checkbox', '_cyberimpact_group', '_cyberimpact_opt_in_type', '_cyberimpact_mappings');

