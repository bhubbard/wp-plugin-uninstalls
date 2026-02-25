-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nick_ls_aboutus', 'nick_ls_aboutus1', 'nick_ls_contact', 'nick_ls_countdown', 'nick_ls_dashboard', 'nick_ls_design', 'nick_ls_seo');

