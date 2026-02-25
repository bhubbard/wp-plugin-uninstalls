-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('guestplan_api_key', 'guestplan_newsletter_hide', 'guestplan_newsletter_default_optin', 'guestplan_widget_language', 'guestplan_auto_open', 'guestplan_hide_btn', 'guestplan_show_specific_pages', 'guestplan_specific_pages_list');

