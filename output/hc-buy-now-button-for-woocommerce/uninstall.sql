-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcbuynow-text', 'wcbuynow-inppage', 'wcbuynow-inshoppage', 'wcbuynow-spbeforeafter', 'wcbuynow-btncustomize', 'wcbuynow-btnradius', 'wcbuynow-primaryclr', 'wcbuynow-bgclr', 'wcbuynow-hoverclr', 'wcbuynow-bghoverclr', 'wcbuynow-btngap', 'wcbuynowbtn_plugin_do_activate');

