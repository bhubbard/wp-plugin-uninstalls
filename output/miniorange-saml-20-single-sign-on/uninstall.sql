-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mo_saml_htaccess_updated', 'mo_saml_assertion_time_validity', 'mo_saml_message', 'mo_saml_multisite_notice_dismissed_time', 'mo_saml_black_friday_sale_notice_dismissed', 'mo_saml_black_friday_sale_notice_dismissed_time', 'mo_saml_keep_settings_on_deletion', 'saml_am_default_user_role');

