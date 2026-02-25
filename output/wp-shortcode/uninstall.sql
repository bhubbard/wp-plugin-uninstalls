-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_shortcode_activated', 'wp_shortcode_notice_views');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_shortcode_ignore_notice', 'wp_shortcode_ignore_notice_2');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_shortcode_ignore_notice', 'wp_shortcode_ignore_notice_2');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_shortcode_ignore_notice', 'wp_shortcode_ignore_notice_2');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_shortcode_ignore_notice', 'wp_shortcode_ignore_notice_2');

