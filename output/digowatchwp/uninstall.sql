-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('digo_watchwp_report_email', 'digo_watchwp_footer_link');

