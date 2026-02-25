-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mmode_tab1_mmode', 'mmode_tab2_mmode_ip', 'mmode_tab2_mmode_users', 'mmode_tab1_time', 'mmode_tab1_mmode_template', 'mmode_tabthree_checkbox_slider', 'mmode_tabthree_mmode_slider_animation', 'mmode_tabthree_checkbox_captions', 'mmode_tabthree_checkbox_markers', 'mmode_tabthree_checkbox_arrows', 'mmode_tabthree_checkbox_rotation', 'mmode_tabthree_animation', 'mmode_tabthree_rotation', 'mmode_tab1_mmode_text', 'mmode_tab2_mmode_css', 'mmode_tabthree_mmode_youtube', 'mmode_tabthree_mmode_twitter', 'mmode_tabthree_mmode_facebook', 'mmode_tabthree_mmode_vimeo', 'mmode_tabthree_mmode_email');

