-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cookie_policy_link', 'cookie_accept_button_text', 'cookie_message', 'cookie_what_are_link_text');

