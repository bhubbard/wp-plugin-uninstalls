-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uicore_elements_mailchimp_secret_key', 'uicore_elements_newsletter_service_key', 'uicore_elements_recaptcha_site_key', 'uicore_elements_recaptcha_secret_key', 'elementor_active_kit', 'uicore_connect', 'uicore_elements_installed', 'uicore_elements_version');
DELETE FROM wp_options WHERE option_name LIKE 'ui_elements_widgetdata_%';
DELETE FROM wp_options WHERE option_name LIKE 'ui_e_form_widget_settings_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('page_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('page_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('page_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('page_description');

