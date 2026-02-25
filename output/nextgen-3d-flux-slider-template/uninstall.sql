-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ng_3dfluxslider_transitions', 'ng_3dfluxslider_caption', 'ng_3dfluxslider_controls', 'ng_3dfluxslider_pagination', 'ng_3dfluxslider_delay', 'ng_3dfluxslider_image_width');

