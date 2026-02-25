-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simplycap_key', 'simplycap_website', 'simplycap_commentform', 'simplycap_hideregister');

