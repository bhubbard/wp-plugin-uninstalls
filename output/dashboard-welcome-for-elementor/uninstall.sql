-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_dwe_templates', 'dwe_hide_from_subsites');

