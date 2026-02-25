-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('token', 'showtitle', 'showdate', 'linktext', 'yumpu_collections');

