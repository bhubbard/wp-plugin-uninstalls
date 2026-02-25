-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gf_icontact_settings', 'gf_icontact_version', 'recently_activated', 'icgf_lists', 'icgf_cf', 'gforms_icontact_version');

