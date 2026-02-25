-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fb', 'fb_width', 'fb_height', 'fb_colorscheme', 'fb_send', 'fb_showfaces', 'twitter', 'socialtopsharing_google', 'socialtopsharing_diggbutton', 'socialtopsharing_linkedin', 'socialtopsharing_myspace', 'socialtopsharing_reddit', 'socialtopsharing_stumbleupon', 'socialtopsharing_tumblr', 'socialtopsharing_stumpleupon');

