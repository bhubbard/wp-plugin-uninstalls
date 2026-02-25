-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xo_security_options', 'xo_security_flush_rewrite_rules');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('xo_security_two_factor_enable', 'xo_security_two_factor_secret_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('xo_security_two_factor_enable', 'xo_security_two_factor_secret_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('xo_security_two_factor_enable', 'xo_security_two_factor_secret_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('xo_security_two_factor_enable', 'xo_security_two_factor_secret_key');

