-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gr_noposts', 'gr_rstitle', 'gr_rptitle', 'gr_showrs');

