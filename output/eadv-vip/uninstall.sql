-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eadv_site_id', 'eadv_magic_code_id', 'eadv_extra_options');

