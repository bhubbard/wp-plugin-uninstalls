-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('CzaterId', 'czaterAutoCompliteLogin', 'czaterAutoCompliteEmail', 'css_template', 'czaterCode');

