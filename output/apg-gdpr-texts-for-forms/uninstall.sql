-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apg_rgpd', 'apg_rgpd_jetpack', 'apg_rgpd_plugin');

