-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('page_on_front_mobile', 'page_for_posts_mobile', 'eos_scfm_main', 'scfm_debug');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('eos_scfm_mobile_post_id', 'eos_scfm_desktop_post_id', 'scfm_offer');
DELETE FROM wp_usermeta WHERE meta_key IN ('eos_scfm_mobile_post_id', 'eos_scfm_desktop_post_id', 'scfm_offer');
DELETE FROM wp_termmeta WHERE meta_key IN ('eos_scfm_mobile_post_id', 'eos_scfm_desktop_post_id', 'scfm_offer');
DELETE FROM wp_commentmeta WHERE meta_key IN ('eos_scfm_mobile_post_id', 'eos_scfm_desktop_post_id', 'scfm_offer');

