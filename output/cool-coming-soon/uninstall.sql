-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cool_coming_soon_data', 'cool_coming_soon_display', 'ccs_cool_coming_soon_activation_redirect');

