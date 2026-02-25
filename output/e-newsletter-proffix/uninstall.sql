-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('proffix_newsletter_settings_error', 'proffix_newsletter_default_url', 'proffix_newsletter_default_db', 'proffix_newsletter_default_list', 'proffix_newsletter_settings_success', 'proffix_newsletter_default_show_name', 'proffix_newsletter_default_description');

