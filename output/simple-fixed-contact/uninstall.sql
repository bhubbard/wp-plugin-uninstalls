-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lbk_fc_gfx', 'lbk_fc_phone', 'lbk_fc_phone_show', 'lbk_fc_zalo', 'lbk_fc_zalo_show', 'lbk_fc_mess', 'lbk_fc_mess_show', 'lbk_fc_fb', 'lbk_fc_fb_show', 'lbk_fc_insta', 'lbk_fc_insta_show', 'lbk_fc_twitter', 'lbk_fc_twitter_show', 'lbk_fc_position', 'lbk_fc_lightbox', 'lbk_fc_lightbox_show', 'lbk_fc_link', 'lbk_fc_link_show');

