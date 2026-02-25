-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('telegram_channel_names_temp', 'site_variables_my_secret', 'randoms_for_main_site', 'my_optioned_arrayyy', 'termids_for_js');
DELETE FROM wp_options WHERE option_name LIKE 'atgfip_text_%';
DELETE FROM wp_options WHERE option_name LIKE '%_network_managed';
DELETE FROM wp_options WHERE option_name LIKE '%_transl_lastvers';
DELETE FROM wp_options WHERE option_name LIKE '%_transl_exists';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'wpmm_dismissed_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'wpmm_dismissed_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'wpmm_dismissed_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'wpmm_dismissed_notices');

