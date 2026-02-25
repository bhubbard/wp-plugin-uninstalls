-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('slider_shortcode', 'gallery_data', 'sws_res_slider_autostart', 'sws_res_slider_startstop', 'sws_res_slider_autodelay', 'sws_res_slider_pager', 'sws_res_slider_navigation');
DELETE FROM wp_usermeta WHERE meta_key IN ('slider_shortcode', 'gallery_data', 'sws_res_slider_autostart', 'sws_res_slider_startstop', 'sws_res_slider_autodelay', 'sws_res_slider_pager', 'sws_res_slider_navigation');
DELETE FROM wp_termmeta WHERE meta_key IN ('slider_shortcode', 'gallery_data', 'sws_res_slider_autostart', 'sws_res_slider_startstop', 'sws_res_slider_autodelay', 'sws_res_slider_pager', 'sws_res_slider_navigation');
DELETE FROM wp_commentmeta WHERE meta_key IN ('slider_shortcode', 'gallery_data', 'sws_res_slider_autostart', 'sws_res_slider_startstop', 'sws_res_slider_autodelay', 'sws_res_slider_pager', 'sws_res_slider_navigation');

