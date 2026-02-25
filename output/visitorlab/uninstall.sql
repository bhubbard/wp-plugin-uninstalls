-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('VisitorLAB_script', 'visitorlab_script', 'visitorlab_version');

