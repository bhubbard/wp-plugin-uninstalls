-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('masterqr_settings', 'masterqr_pagety', 'masterqr_logo_posttype', 'masterqr_link_generator', 'MASTERLite_QR_shortcode_docs');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('masterqr_meta');
DELETE FROM wp_usermeta WHERE meta_key IN ('masterqr_meta');
DELETE FROM wp_termmeta WHERE meta_key IN ('masterqr_meta');
DELETE FROM wp_commentmeta WHERE meta_key IN ('masterqr_meta');

