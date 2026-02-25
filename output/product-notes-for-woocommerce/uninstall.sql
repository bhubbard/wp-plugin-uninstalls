-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alg_wc_pn_wpml_use_default_language_product_id', 'alg_wc_pn_public_logged_in_user_only', 'alg_wc_pn_private_wp_editor', 'alg_wc_pn_public_wp_editor', 'alg_wc_product_notes_version', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_reset';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_tab_title';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_tab_title';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_tab_title';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_tab_title';

