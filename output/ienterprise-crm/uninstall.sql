-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ienterprisecrm_endpoint', 'ienterprisecrm_submitbtn', 'ienterprisecrm_username', 'ienterprisecrm_password', 'ienterprisecrm_recaptcha', 'ienterprisecrm_recaptcha_key', 'ienterprisecrm_recaptcha_secret', 'ienterprisecrm_is_connected', 'ienterprisecrm_fields', 'ienterprisecrm_keywords');

