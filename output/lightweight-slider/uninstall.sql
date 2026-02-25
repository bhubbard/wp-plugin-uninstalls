-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lws_slide_height', 'lws_delay', 'lws_transition', 'lws_animation', 'lws_controls', 'lws_pagination');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('slide_caption', 'slide_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('slide_caption', 'slide_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('slide_caption', 'slide_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('slide_caption', 'slide_link');

