-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gf_sagepay_form_has_feeds', 'gf_sagepay_form_configured');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismiss_sagepay_form_menu');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismiss_sagepay_form_menu');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismiss_sagepay_form_menu');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismiss_sagepay_form_menu');

