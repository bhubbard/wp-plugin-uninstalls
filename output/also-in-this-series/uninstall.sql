-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alsointhisseries_activate', 'alsointhisseries_deactivate');

