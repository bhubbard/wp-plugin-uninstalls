-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jwt_auth_options', 'jwt_auth_dismissed_notices', 'woocommerce_version', 'jwt_auth_install_date', 'jwt_auth_tokens_created');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('jwt_auth_survey_completed', 'jwt_auth_survey_dismissal');
DELETE FROM wp_usermeta WHERE meta_key IN ('jwt_auth_survey_completed', 'jwt_auth_survey_dismissal');
DELETE FROM wp_termmeta WHERE meta_key IN ('jwt_auth_survey_completed', 'jwt_auth_survey_dismissal');
DELETE FROM wp_commentmeta WHERE meta_key IN ('jwt_auth_survey_completed', 'jwt_auth_survey_dismissal');

