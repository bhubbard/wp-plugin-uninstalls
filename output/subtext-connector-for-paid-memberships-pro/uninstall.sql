-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fe_subtext_pmp_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('subtext_uuid', 'subtext_opt_in', 'pmpro_sphone', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('subtext_uuid', 'subtext_opt_in', 'pmpro_sphone', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('subtext_uuid', 'subtext_opt_in', 'pmpro_sphone', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('subtext_uuid', 'subtext_opt_in', 'pmpro_sphone', 'first_name', 'last_name');

