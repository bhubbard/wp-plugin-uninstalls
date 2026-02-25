-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('RingCentral_2fa_user_2fa_code', 'RingCentral_2fa_user_mobile');
DELETE FROM wp_usermeta WHERE meta_key IN ('RingCentral_2fa_user_2fa_code', 'RingCentral_2fa_user_mobile');
DELETE FROM wp_termmeta WHERE meta_key IN ('RingCentral_2fa_user_2fa_code', 'RingCentral_2fa_user_mobile');
DELETE FROM wp_commentmeta WHERE meta_key IN ('RingCentral_2fa_user_2fa_code', 'RingCentral_2fa_user_mobile');

