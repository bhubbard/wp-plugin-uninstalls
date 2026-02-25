-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kunato_identification', 'kunato_currency', 'kunato_disable_title_modify');

