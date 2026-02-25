-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('oqey_crop_images', 'oqey_HideThumbs', 'oqey_LoopOption', 'oqey_width', 'oqey_height', 'oqey_limitmax', 'oqey_max_width', 'oqey_max_height', 'oqey_BorderOption', 'oqey_AutostartOption', 'oqey_CaptionsOption', 'oqey_options', 'oqey_thumb_width', 'oqey_thumb_height', 'oqey_effects_trans_time', 'oqey_pause_between_tran', 'oqey_border_bgcolor', 'oqey_bgcolor', 'oqey_effect_transition_type', 'oqey_BorderSize', 'oqey_gall_title_no', 'oqey_show_captions_under_photos', 'oqey_noflash_options', 'oqey_backlinks', 'oqey_flash_gallery_true');

