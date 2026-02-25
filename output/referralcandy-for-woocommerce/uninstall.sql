-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_referralcandy_plugin_do_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rc_accepts_marketing', 'rc_aic', 'rc_loc');
DELETE FROM wp_usermeta WHERE meta_key IN ('rc_accepts_marketing', 'rc_aic', 'rc_loc');
DELETE FROM wp_termmeta WHERE meta_key IN ('rc_accepts_marketing', 'rc_aic', 'rc_loc');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rc_accepts_marketing', 'rc_aic', 'rc_loc');

