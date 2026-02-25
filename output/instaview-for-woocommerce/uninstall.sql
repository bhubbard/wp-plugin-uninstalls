-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('instaview_enable', 'instaview_enableformobile', 'instaview_buttontype');

