-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_referral_code_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wrc_referrer_id', 'first_name', 'last_name', 'wrc_ref_code', 'wrc_invited_users');
DELETE FROM wp_usermeta WHERE meta_key IN ('wrc_referrer_id', 'first_name', 'last_name', 'wrc_ref_code', 'wrc_invited_users');
DELETE FROM wp_termmeta WHERE meta_key IN ('wrc_referrer_id', 'first_name', 'last_name', 'wrc_ref_code', 'wrc_invited_users');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wrc_referrer_id', 'first_name', 'last_name', 'wrc_ref_code', 'wrc_invited_users');

