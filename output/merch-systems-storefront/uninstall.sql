-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('merchsys_addmenu', 'merchsys_showcategories', 'merchsys_showshopcarousel', 'merchsys_showloginmenu', 'merchsys_loginmenuwrapper', 'merchsys_basketmenuwrapper', 'merchsys_maxamount', 'merchsys_gobasket', 'merchsys_navigationname');

