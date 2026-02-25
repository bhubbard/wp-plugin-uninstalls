-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('custom-popup-builder-settings_mailchimp');
DELETE FROM wp_options WHERE option_name LIKE '%_mailchimp';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_template_type', '_elementor_page_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_template_type', '_elementor_page_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_template_type', '_elementor_page_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_template_type', '_elementor_page_settings');

