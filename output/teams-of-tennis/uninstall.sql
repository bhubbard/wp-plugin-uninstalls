-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vr_tennisclub_link', 'vr_tennisteam_link', 'vr_tennisballmodus_link');

