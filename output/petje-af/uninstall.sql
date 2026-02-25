-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('petje_af_client_id', 'petje_af_client_secret', 'petje_af_page_id', 'petje_af_site_protection_plan', 'petje_af_ignore_access_settings_for_admin', 'petje_af_account_page', 'petje_af_access_denied_page', 'petje_af_redirect_uri_page', 'petjeaf_connection_failed');
DELETE FROM wp_options WHERE option_name LIKE '%refresh_token';
DELETE FROM wp_options WHERE option_name LIKE 'petje_af_state_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('petje_af_page_plan_id', 'petjeaf_user_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('petje_af_page_plan_id', 'petjeaf_user_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('petje_af_page_plan_id', 'petjeaf_user_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('petje_af_page_plan_id', 'petjeaf_user_id');

