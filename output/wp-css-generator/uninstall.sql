-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_css_generator_css_setting_google_fonts', 'wp_css_generator_css_setting_css', 'wp_css_generator_first_activation');
DELETE FROM wp_options WHERE option_name LIKE 'wp_css_generator_css_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%status';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%status';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%status';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%status';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%priority';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%priority';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%priority';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%priority';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%css_options';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%css_options';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%css_options';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%css_options';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%data';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%data';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%data';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%data';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%important';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%important';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%important';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%important';

