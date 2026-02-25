-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('minipopup_style', 'minipopup_smart_mode', 'c1_minipopup', 'c2_minipopup', 'c3_minipopup', 'c4_minipopup');

