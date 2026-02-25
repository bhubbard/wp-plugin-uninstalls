-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tagtagjidou', 'adrestag', 'tagtag_rendo', 'tagtag_ng', 'tagtagallng', 'fjscp_order', 'aoringotag_installed');

