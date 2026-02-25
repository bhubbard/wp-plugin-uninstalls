-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shoutbox2024_refresh-interval', 'shoutbox2024_default-font-colour', 'shoutbox2024_locale', 'shoutbox2024_cleanup', 'shoutbox2024_pm-background-colour', 'shoutbox2024_new-message-colour', 'shoutbox2024_height', 'shoutbox2024_options');

