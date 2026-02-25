-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_av_require_for', '_av_always_verify', '_av_minimum_age', '_av_cookie_duration', '_av_membership', '_av_heading', '_av_description', '_av_input_type', '_av_styling', '_av_overlay_color', '_av_bgcolor');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_av_needs_verify');
DELETE FROM wp_usermeta WHERE meta_key IN ('_av_needs_verify');
DELETE FROM wp_termmeta WHERE meta_key IN ('_av_needs_verify');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_av_needs_verify');

