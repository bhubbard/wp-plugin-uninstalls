-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mb_subscribed', 'mb_email', 'mb_icon_color', 'mb_extended_language_support', 'MB_VERSION');

