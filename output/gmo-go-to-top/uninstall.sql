-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gmogototop[img_color]', 'gmogototop[icon_fontstyle]', 'gmogototop[type]', 'gmogototop[direction]', 'gmogototop[uploadimg]', 'gmogototop[iconsize]', 'gmogototop[marginlr]', 'gmogototop[marginbottom]');

