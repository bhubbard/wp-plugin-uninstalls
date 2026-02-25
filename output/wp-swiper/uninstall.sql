-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_swiper_options');
DELETE FROM wp_options WHERE option_name LIKE '%-options';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpswiper_beta_140_dismissed_v2');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpswiper_beta_140_dismissed_v2');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpswiper_beta_140_dismissed_v2');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpswiper_beta_140_dismissed_v2');

