-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sphca_On_Homepage', 'sphca_On_Posts', 'sphca_On_Pages', 'sphca_On_Archives', 'sphca_On_Search', 'sphca_option');

