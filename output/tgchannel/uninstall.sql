-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('TG_Channel_background', 'TG_Channel_background_color', 'TG_Channel_Header_color', 'TG_Channel_Footer_color', 'TG_Channel_Header_Font_color', 'TG_Channel_Footer_Font_color', 'TG_Channel_Header_Font_size', 'TG_Channel_Footer_Font_size', 'TG_Channel_Header_Height', 'TG_Channel_Footer_Height', 'TG_Channel_Body_height', 'TG_Channel_Body_width', 'TG_Channel_body_size', 'TG_Channel_link', 'TG_Channel_name', 'TG_Channel_postid', 'TG_channel_Bot_Token', 'TG_Channel_username', 'TG_Channel_saving_count');

