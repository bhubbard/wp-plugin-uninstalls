-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_update_plugin';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('payamak-pars_mobile', 'payamak-pars_referenceno', 'sms_verified', 'payamakparssms_referenceno', 'sms_registered', 'payamakparssms_mobile');
DELETE FROM wp_usermeta WHERE meta_key IN ('payamak-pars_mobile', 'payamak-pars_referenceno', 'sms_verified', 'payamakparssms_referenceno', 'sms_registered', 'payamakparssms_mobile');
DELETE FROM wp_termmeta WHERE meta_key IN ('payamak-pars_mobile', 'payamak-pars_referenceno', 'sms_verified', 'payamakparssms_referenceno', 'sms_registered', 'payamakparssms_mobile');
DELETE FROM wp_commentmeta WHERE meta_key IN ('payamak-pars_mobile', 'payamak-pars_referenceno', 'sms_verified', 'payamakparssms_referenceno', 'sms_registered', 'payamakparssms_mobile');

