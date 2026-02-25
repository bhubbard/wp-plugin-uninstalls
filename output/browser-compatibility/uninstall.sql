-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bctext', 'bc_d_ie6', 'bc_d_ie7', 'bc_d_ie8', 'bc_d_opera', 'bc_d_safari', 'bc_d_ns', 'bc_d_chrome', 'bc_d_mozilla', 'resolution', 'bc_d_iphone', 'bc_closebutton', 'bc_bg_colour', 'bc_text_colour', 'bc_swidth', 'bc_sheight');

