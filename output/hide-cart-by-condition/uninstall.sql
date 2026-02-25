-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Kw_hide_addto_hide_allways', 'Kw_hide_addto_hide_end', 'hide_on');

