-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('otgkofcs_hcaptcha_secret_key', 'otgkofcs_number_of_districts', 'otgkofcs_email_sender_name', 'otgkofcs_email_sender_address');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('name', 'location', 'charter_date', 'faithful_navigator', 'faithful_comptroller', 'color_corps_commander', 'website', 'contact_email', 'facebook', 'twitter', 'instagram', 'grand_knight', 'district', 'assembly', 'rss_url', 'name_first', 'name_last', 'email_address', 'council');
DELETE FROM wp_usermeta WHERE meta_key IN ('name', 'location', 'charter_date', 'faithful_navigator', 'faithful_comptroller', 'color_corps_commander', 'website', 'contact_email', 'facebook', 'twitter', 'instagram', 'grand_knight', 'district', 'assembly', 'rss_url', 'name_first', 'name_last', 'email_address', 'council');
DELETE FROM wp_termmeta WHERE meta_key IN ('name', 'location', 'charter_date', 'faithful_navigator', 'faithful_comptroller', 'color_corps_commander', 'website', 'contact_email', 'facebook', 'twitter', 'instagram', 'grand_knight', 'district', 'assembly', 'rss_url', 'name_first', 'name_last', 'email_address', 'council');
DELETE FROM wp_commentmeta WHERE meta_key IN ('name', 'location', 'charter_date', 'faithful_navigator', 'faithful_comptroller', 'color_corps_commander', 'website', 'contact_email', 'facebook', 'twitter', 'instagram', 'grand_knight', 'district', 'assembly', 'rss_url', 'name_first', 'name_last', 'email_address', 'council');

