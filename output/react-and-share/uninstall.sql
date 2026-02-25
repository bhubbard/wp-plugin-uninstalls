-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rns_do_activation_redirect', 'rns_settings', 'rns-plugin-activation-notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rns_enable');
DELETE FROM wp_usermeta WHERE meta_key IN ('rns_enable');
DELETE FROM wp_termmeta WHERE meta_key IN ('rns_enable');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rns_enable');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'rns_reaction_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'rns_reaction_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'rns_reaction_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rns_reaction_%';

