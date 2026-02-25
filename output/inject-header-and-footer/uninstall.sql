-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('daq_ihaf_header_content', 'daq_ihaf_footer_content');

