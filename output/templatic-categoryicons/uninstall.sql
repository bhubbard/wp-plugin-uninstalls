-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tmpl_cat_icon_activate_msg');
DELETE FROM wp_options WHERE option_name LIKE 'templtax_%';

